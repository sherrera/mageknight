#!/usr/bin/env bash
# Adds pip-installed CUDA libs to LD_LIBRARY_PATH so onnxruntime can find them,
# then runs the background removal script.
set -e

NVIDIA_LIBS=$(python3 -c "
import os, glob
base = os.path.expanduser('~/.local/lib/python3.10/site-packages/nvidia')
paths = [d for d in glob.glob(base + '/*/lib') if os.path.isdir(d)]
print(':'.join(paths))
")

export LD_LIBRARY_PATH="$NVIDIA_LIBS:${LD_LIBRARY_PATH:-}"

cd "$(dirname "$0")/.."
python3 scripts/process_images_step2_rembg.py
