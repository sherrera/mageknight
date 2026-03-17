import os
import requests
import shutil
from sqlalchemy import create_engine, Column, Integer, String, Float, or_
from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base
import time
from datetime import datetime

# --- Configuration ---

DATABASE_URL = "postgresql://mageknight_user:test@localhost:5432/mageknight_db"
IMAGE_BASE_DIR = os.path.join(os.path.dirname(__file__), '..', 'webapp', 'static', 'images')
HEADERS = {
    "User-Agent": "MageKnight-DB-ImageDownloader/1.2"
}

# Each database set name maps to a list of possible URL prefixes.
SET_PREFIX_PATTERNS = {
    "Rebellion": ["mkr"],
    "Lancers": ["mkl", "wzklan", "wzkmklan", "mklan"],
    "lancers": ["mkl", "wzklan", "wzkmklan", "mklan"],
    "Whirlwind": ["mkwhi", "wzkwhi"],
    "ww": ["mkwhi", "wzkwhi"],
    "Unlimited": ["mk"],
    "Sinister": ["mks", "mksin"],
    "siniste": ["mks", "mksin"],
    "Minions": ["minions", "wzkmin", "mkmin"],
    "minions": ["minions", "wzkmin", "mkmin"],
    "Pyramid": ["mkp", "mkpyr", "mknex", "skullwarder", "wzkpyr"],
    "pyramid": ["mkp", "mkpyr", "mknex", "skullwarder", "wzkpyr"],
    "Uprising": ["mku", "mkup", "wzkupr", "mknex"],
    "up": ["mku", "mkup", "wzkupr", "mknex"],
    "Nexus": ["mknex", "mkn"],
    "Dark-Riders": ["darkriders"],
    "Conquest": ["mkc"],
    "Dragons-Gate": ["dragonsgate"],
    "Sorcery": ["sorcery"],
    "Omens": ["omens"],
    "mkd": ["mkd", "mkdun", "wzkdun"],
    "alpha": ["mka", "mkr", "wzkreb", "mkunl"] # As discovered, alpha seems to use Rebellion's prefix
}

# Global list to store failed miniatures for reporting
failed_minis_log = []

def write_failed_minis_to_md(failed_list, output_file="failed_image_downloads.md"):
    """Writes the list of failed miniatures to a Markdown file."""
    filepath = os.path.join(os.path.dirname(__file__), '..', output_file)
    with open(filepath, 'w') as f:
        f.write(f"# Mage Knight Miniatures - Failed Image Downloads\n\n")
        f.write(f"This file lists miniatures for which an image could not be found after trying all known patterns.\n\n")
        f.write(f"## Last Run: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n\n")

        if not failed_list:
            f.write("No miniatures failed to download images in the last run.\n")
            return

        # Group by set_name for better readability
        failed_by_set = {}
        for mini_data in failed_list:
            set_name = mini_data.get('set_name', 'Unknown Set')
            if set_name not in failed_by_set:
                failed_by_set[set_name] = []
            failed_by_set[set_name].append(mini_data)
        
        for set_name, minis_in_set in sorted(failed_by_set.items()):
            f.write(f"### {set_name}\n")
            for mini_data in minis_in_set:
                f.write(f"*   **{mini_data['name']} (#{mini_data['collector_number']})**: Source URL: {mini_data['source_url']}\n")
            f.write("\n")
    print(f"\nFailed miniatures log written to {output_file}")

# --- SQLAlchemy Setup ---


Base = declarative_base()

class Miniature(Base):
    __tablename__ = 'miniatures'
    id = Column(Integer, primary_key=True)
    name = Column(String(255))
    set_name = Column(String(255))
    collector_number = Column(Integer)
    image_url = Column(String(255))
    rank = Column(String(50))
    point_cost = Column(Integer)
    frq = Column(Integer)
    arc = Column(Integer)
    range = Column(Integer)
    range_targets = Column(Integer)
    source_url = Column(String(255))
    power_score = Column(Float)
    efficiency_score = Column(Float)
    normalized_power_score = Column(Float)
    normalized_efficiency_score = Column(Float)

engine = create_engine(DATABASE_URL)
Session = sessionmaker(bind=engine)

# --- Core Functions ---

def generate_url_patterns(mini):
    """Generates a list of possible image URLs for a given miniature."""
    urls_to_try = []
    
    prefixes = SET_PREFIX_PATTERNS.get(mini.set_name)
    if not prefixes:
        return []

    if mini.collector_number is None:
        return []

    # Define the different formats for the collector number
    num_formats = {
        'padded': str(mini.collector_number).zfill(3),
        'unpadded': str(mini.collector_number)
    }

    # Define the different base URL paths
    base_paths = ['/m/jpg1500/', '/w/jpg1500/']

    # Generate all combinations
    for prefix in prefixes:
        for num_key, num_val in num_formats.items():
            for base_path in base_paths:
                # Prioritize more likely patterns
                # e.g., 'wzk' prefixes are often with '/w/' path
                if prefix.startswith('wzk') and not base_path.startswith('/w/') and not (prefix == 'wzklan' and base_path == '/m/jpg1500/'): # Added exception for wzklan
                    continue
                
                url = f"https://image.nobleknight.com{base_path}{prefix}{num_val}.jpg"
                if url not in urls_to_try:
                    urls_to_try.append(url)

    return urls_to_try

def download_and_update_image(session, mini):
    """
    Tries a list of URL patterns, downloads the first successful one, 
    and updates the miniature's image_url field.
    """
    # 1. Check if image already exists and is correctly logged in the DB
    set_image_dir = os.path.join(IMAGE_BASE_DIR, mini.set_name or "Unknown")
    if mini.collector_number is not None:
        local_filename = f"{mini.collector_number}.jpg" # Assume jpg for now
        local_path = os.path.join(set_image_dir, local_filename)
        web_path = f"/static/images/{mini.set_name or 'Unknown'}/{local_filename}"
        if os.path.exists(local_path) and mini.image_url == web_path:
            print(f"EXISTS: Image for '{mini.name}' is already correct.")
            return

    # 2. Generate all possible URL patterns
    possible_urls = generate_url_patterns(mini)
    if not possible_urls:
        print(f"SKIPPING: No patterns for '{mini.name}' (Set: {mini.set_name})")
        return

    # 3. Loop through patterns and try to download
    for i, url in enumerate(possible_urls):
        print(f"  -> TRYING ({i+1}/{len(possible_urls)}): {url}")
        try:
            response = requests.get(url, stream=True, headers=HEADERS, timeout=10)
            if response.status_code == 200:
                # SUCCESS!
                os.makedirs(set_image_dir, exist_ok=True)
                
                # Determine file extension from URL or headers
                content_type = response.headers.get('content-type')
                ext = ".jpg" # default
                if content_type:
                    if 'jpeg' in content_type:
                        ext = ".jpeg"
                    elif 'png' in content_type:
                        ext = ".png"
                
                local_filename = f"{mini.collector_number}{ext}"
                local_path = os.path.join(set_image_dir, local_filename)
                web_path = f"/static/images/{mini.set_name}/{local_filename}"

                with open(local_path, 'wb') as out_file:
                    shutil.copyfileobj(response.raw, out_file)
                
                print(f"SUCCESS: Found image for '{mini.name}' at {url}")
                
                # Update the miniature's image_url in the session and commit
                mini.image_url = web_path
                session.commit()
                
                # Wait a moment to be polite to the server
                time.sleep(0.5) 
                return # Exit after first success

        except requests.exceptions.RequestException:
            # This could be a timeout or other network error, just try the next one
            continue
    
    # 4. If the loop completes, all patterns failed
    print(f"FAILED: Could not find an image for '{mini.name}' after trying all patterns.")
    failed_minis_log.append({
        'name': mini.name,
        'set_name': mini.set_name,
        'collector_number': mini.collector_number,
        'source_url': mini.source_url
    })


# --- Main Execution ---

if __name__ == "__main__":
    session = Session()
    
    try:
        print("Querying all miniatures from the database...")
        minis_to_process = session.query(Miniature).filter(
            Miniature.set_name != 'lancers', # Exclude lancers
            or_(
                Miniature.image_url.like('%/0.jpeg'),
                Miniature.image_url.like('%/0.jpg'),
                Miniature.image_url == None,
                Miniature.image_url == ''
            )
        ).order_by(Miniature.set_name, Miniature.collector_number).all()
        total = len(minis_to_process)
        print(f"Found {total} miniatures to process.")

        for i, miniature in enumerate(minis_to_process):
            print(f"\n--- Processing {i+1}/{total}: {miniature.name} ({miniature.set_name} #{miniature.collector_number}) ---")
            download_and_update_image(session, miniature)

        print("\nImage processing complete.")
        write_failed_minis_to_md(failed_minis_log)

    except Exception as e:
        print(f"\nAn error occurred during main execution: {e}")
        session.rollback()
    finally:
        print("Closing database session.")
        session.close()