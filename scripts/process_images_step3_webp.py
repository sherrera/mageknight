"""
Step 3 of 3 — Convert to WebP.

Reads from:  public/images-nobg/   (transparent PNGs from step 2)
Writes to:   public/images-webp/   (transparent WebPs, web-optimised)

- Quality 82 — good balance of size vs. visual fidelity
- Preserves transparency (RGBA)
- Skips files that already exist in dest (safe to resume)
"""

import time
from pathlib import Path
from PIL import Image

SRC  = Path("public/images-nobg")
DEST = Path("public/images-webp")
QUALITY = 82

files = sorted(f for f in SRC.rglob("*.png") if f.is_file())
print(f"Found {len(files)} images")

skipped = processed = errors = 0
t_start = time.time()

for i, src_path in enumerate(files, 1):
    rel       = src_path.relative_to(SRC)
    dest_path = DEST / rel.parent / (rel.stem + ".webp")
    dest_path.parent.mkdir(parents=True, exist_ok=True)

    if dest_path.exists():
        skipped += 1
        continue

    try:
        with Image.open(src_path) as img:
            img = img.convert("RGBA")
            img.save(dest_path, "WEBP", quality=QUALITY, method=4)
        processed += 1
    except Exception as e:
        print(f"  ERROR {rel}: {e}")
        errors += 1

    if processed % 100 == 0:
        elapsed = time.time() - t_start
        per_img = elapsed / processed
        remaining = (len(files) - i) * per_img
        print(f"  {i}/{len(files)} — {per_img:.2f}s/img — ~{remaining/60:.0f}min left")

elapsed = time.time() - t_start
print(f"\nDone in {elapsed:.1f}s — {processed} converted, {skipped} skipped, {errors} errors")

# Print size comparison
src_mb  = sum(f.stat().st_size for f in SRC.rglob("*.png"))  / 1e6
dest_mb = sum(f.stat().st_size for f in DEST.rglob("*.webp")) / 1e6
print(f"Size: {src_mb:.1f} MB PNG → {dest_mb:.1f} MB WebP ({100*(1-dest_mb/src_mb):.0f}% smaller)")
