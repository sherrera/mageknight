"""
Step 2 of 3 — Remove backgrounds.

Reads from:  public/images-resized/  (500×500 JPEGs from step 1)
Writes to:   public/images-nobg/     (500×500 PNGs with transparency)

- Uses BiRefNet model (best quality for figurines)
- Requires CUDA libs in LD_LIBRARY_PATH — run via run_step2.sh
- Skips files that already exist in dest (safe to resume if interrupted)
"""

import os
import sys
import time
from pathlib import Path
from rembg import remove, new_session
from PIL import Image

SRC  = Path("public/images-resized")
DEST = Path("public/images-nobg")

files = sorted(f for f in SRC.rglob("*.jpg") if f.is_file())
print(f"Found {len(files)} images")

session = new_session("birefnet-general")
print("Model loaded, starting...\n")

skipped = 0
processed = 0
errors = 0
t_start = time.time()

for i, src_path in enumerate(files, 1):
    rel       = src_path.relative_to(SRC)
    dest_path = DEST / rel.parent / (rel.stem + ".png")
    dest_path.parent.mkdir(parents=True, exist_ok=True)

    if dest_path.exists():
        skipped += 1
        continue

    try:
        with Image.open(src_path) as img:
            result = remove(img, session=session)
        result.save(dest_path, "PNG")
        processed += 1
    except Exception as e:
        print(f"  ERROR {rel}: {e}")
        errors += 1
        continue

    if processed % 50 == 0:
        elapsed  = time.time() - t_start
        per_img  = elapsed / processed
        remaining = (len(files) - i) * per_img
        print(f"  {i}/{len(files)} — {per_img:.1f}s/img — ~{remaining/60:.0f}min left")

elapsed = time.time() - t_start
print(f"\nDone in {elapsed/60:.1f}min — {processed} processed, {skipped} skipped, {errors} errors")
print(f"Output: {DEST}/")
