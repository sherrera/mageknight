"""
Step 1 of 3 — Resize images.

Reads from:  public/images/          (originals, untouched)
Writes to:   public/images-resized/  (same directory structure)

- Skips No_Image_Available.jpg
- Resizes to 500×500 (originals are already square 1500×1500)
- Saves as JPEG quality=92 (lossless not needed; step 2 reads these)
- Preserves subdirectory structure
"""

import os
import sys
from pathlib import Path
from PIL import Image

SRC  = Path("public/images")
DEST = Path("public/images-resized")
SIZE = (500, 500)
SKIP = {"No_Image_Available.jpg"}

extensions = {".jpg", ".jpeg", ".JPG", ".JPEG"}

files = [
    f for f in SRC.rglob("*")
    if f.is_file() and f.suffix in extensions and f.name not in SKIP
]

print(f"Found {len(files)} images to resize")

for i, src_path in enumerate(sorted(files), 1):
    rel      = src_path.relative_to(SRC)
    dest_path = DEST / rel.parent / (rel.stem + ".jpg")
    dest_path.parent.mkdir(parents=True, exist_ok=True)

    with Image.open(src_path) as img:
        img = img.convert("RGB")
        img = img.resize(SIZE, Image.LANCZOS)
        img.save(dest_path, "JPEG", quality=92)

    if i % 50 == 0 or i == len(files):
        print(f"  {i}/{len(files)} — {rel}")

print(f"\nDone. Resized images saved to {DEST}/")
