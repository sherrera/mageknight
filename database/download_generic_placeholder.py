import requests
import shutil
import os

IMAGE_BASE_DIR = os.path.join('/home/santiagoherrera/mageknight', 'webapp', 'static', 'images')
IMAGE_URL = 'https://via.placeholder.com/150x150.png?text=No+Image+Available'
LOCAL_PATH = os.path.join(IMAGE_BASE_DIR, 'no_image_available.jpg')

print(f'Downloading {IMAGE_URL} to {LOCAL_PATH}')
os.makedirs(IMAGE_BASE_DIR, exist_ok=True)

try:
    response = requests.get(IMAGE_URL, stream=True)
    response.raise_for_status()
    with open(LOCAL_PATH, 'wb') as out_file:
        shutil.copyfileobj(response.raw, out_file)
    print('Download complete.')
except requests.exceptions.RequestException as e:
    print(f"Error downloading image: {e}")
