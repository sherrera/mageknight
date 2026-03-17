

import json
import os
import sys
import time

# Add the scraper directory to the Python path to import from it
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..', 'scraper')))

from scraper import parse_mini_page, HEADERS

# Hardcoded list of URLs for the Unique miniatures from the Unlimited set
UNIQUE_MINI_URLS = [
    "http://www.knight-ware.com/cmg/mageknight/unlimit/145.html",
    "http://www.knight-ware.com/cmg/mageknight/unlimit/146.html",
    "http://www.knight-ware.com/cmg/mageknight/unlimit/147.html",
    "http://www.knight-ware.com/cmg/mageknight/unlimit/148.html",
    "http://www.knight-ware.com/cmg/mageknight/unlimit/149.html",
    "http://www.knight-ware.com/cmg/mageknight/unlimit/150.html",
    "http://www.knight-ware.com/cmg/mageknight/unlimit/151.html",
    "http://www.knight-ware.com/cmg/mageknight/unlimit/152.html",
    "http://www.knight-ware.com/cmg/mageknight/unlimit/153.html",
    "http://www.knight-ware.com/cmg/mageknight/unlimit/154.html",
    "http://www.knight-ware.com/cmg/mageknight/unlimit/155.html",
    "http://www.knight-ware.com/cmg/mageknight/unlimit/156.html",
    "http://www.knight-ware.com/cmg/mageknight/unlimit/157.html",
    "http://www.knight-ware.com/cmg/mageknight/unlimit/158.html",
    "http://www.knight-ware.com/cmg/mageknight/unlimit/159.html",
    "http://www.knight-ware.com/cmg/mageknight/unlimit/160.html"
]

def scrape_unlimited_uniques():
    """
    Scrapes only the unique miniatures from the Unlimited set.
    """
    print("Starting to scrape unique miniatures from the Unlimited set...")
    all_miniatures = []
    all_abilities = set()

    for mini_url in UNIQUE_MINI_URLS:
        print(f"Scraping {mini_url}...")
        time.sleep(1.5)  # Be respectful to the server
        
        # The parse_mini_page function expects a canonical set name
        minis, abilities = parse_mini_page(mini_url, "alpha")
        
        if minis:
            all_miniatures.extend(minis)
        if abilities:
            all_abilities.update(abilities)

    print("\nScraping complete. Formatting and saving data...")

    formatted_abilities = sorted([{"name": name, "color": color} for name, color in all_abilities], key=lambda x: x['name'])

    final_data = {
        "unique_abilities": formatted_abilities,
        "miniatures": all_miniatures
    }

    output_path = os.path.join(os.path.dirname(__file__), '..', 'unlimited_uniques.json')
    with open(output_path, 'w') as f:
        json.dump(final_data, f, indent=2)

    print(f"Successfully saved data for {len(all_miniatures)} unique miniatures to {output_path}")

if __name__ == "__main__":
    scrape_unlimited_uniques()
