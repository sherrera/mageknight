import json
import os
import requests
import shutil

# User-Agent to identify our downloader
HEADERS = {
    "User-Agent": "MageKnight-DB-ImageDownloader/1.0"
}

def download_image(image_url, set_name, collector_num, base_output_dir):
    """Downloads an image and saves it locally, returning the local path."""
    if not image_url:
        return ""

    # Determine file extension from URL
    ext = os.path.splitext(image_url)[1]
    if not ext: # Fallback if no extension in URL
        ext = ".jpeg" # Common image format for this site

    # Create directory for the set if it doesn't exist
    image_dir = os.path.join(base_output_dir, set_name)
    os.makedirs(image_dir, exist_ok=True)

    # Construct local filename
    local_filename = f"{collector_num}{ext}"
    local_path = os.path.join(image_dir, local_filename)

    # Relative path for web access (from webapp/static/)
    web_path = f"/static/images/{set_name}/{local_filename}"

    if os.path.exists(local_path):
        print(f"Image already exists: {web_path}")
        return web_path

    try:
        response = requests.get(image_url, stream=True, headers=HEADERS)
        response.raise_for_status()
        with open(local_path, 'wb') as out_file:
            shutil.copyfileobj(response.raw, out_file)
        print(f"Downloaded image to: {web_path}")
        return web_path
    except requests.exceptions.RequestException as e:
        print(f"Error downloading image {image_url}: {e}")
        return ""

def process_images(input_file, output_file, image_base_dir):
    """Reads JSON, downloads images, updates paths, and saves new JSON."""
    print(f"Reading data from {input_file}...")
    try:
        with open(input_file, 'r') as f:
            data = json.load(f)
    except FileNotFoundError:
        print(f"Error: Input file not found at {input_file}")
        return

    updated_miniatures = []
    for mini in data.get('miniatures', []):
        original_image_url = mini.get('image_url')
        set_name = mini.get('set_name')
        collector_num = mini.get('collector_number')

        if original_image_url and set_name and collector_num is not None:
            local_image_path = download_image(original_image_url, set_name, collector_num, image_base_dir)
            mini['image_url'] = local_image_path
        
        updated_miniatures.append(mini)

    data['miniatures'] = updated_miniatures

    print(f"Saving updated data to {output_file}...")
    with open(output_file, 'w') as f:
        json.dump(data, f, indent=2)
    print("Image paths updated and data saved successfully.")

if __name__ == "__main__":
    input_json_path = os.path.join(os.path.dirname(__file__), '..', 'minis.json')
    output_json_path = os.path.join(os.path.dirname(__file__), '..', 'minis_final.json')
    image_output_base_dir = os.path.join(os.path.dirname(__file__), '..', 'webapp', 'static', 'images')
    
    process_images(input_json_path, output_json_path, image_output_base_dir)
