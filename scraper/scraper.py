import requests
from bs4 import BeautifulSoup
import json
import time
import re
import os
import random
import shutil

# Base URL for the website
BASE_URL = "http://www.knight-ware.com/cmg/mageknight/"

# List of main set pages
SET_URLS = [
    "http://www.knight-ware.com/cmg/mageknight/mkd.html",
    "http://www.knight-ware.com/cmg/mageknight/minions.html",
    "http://www.knight-ware.com/cmg/mageknight/lancers.html",
    "http://www.knight-ware.com/cmg/mageknight/pyramid.html",
    "http://www.knight-ware.com/cmg/mageknight/sinister.html",
    "http://www.knight-ware.com/cmg/mageknight/alpha.html",
    "http://www.knight-ware.com/cmg/mageknight/ww.html",
    "http://www.knight-ware.com/cmg/mageknight/up.html",
]

# User-Agent to identify our scraper
HEADERS = {
    "User-Agent": "MageKnight-DB-Scraper/1.0"
}

def get_mini_links_from_set(set_url):
    """Fetches all individual miniature links from a main set page."""
    try:
        response = requests.get(set_url, headers=HEADERS)
        response.raise_for_status()
        soup = BeautifulSoup(response.content, 'html.parser')
        links = []
        for a in soup.find_all('a', href=re.compile(r"(\w+/)?\d+\.html$")):
            if a.find_parent('td'):
                full_url = requests.compat.urljoin(set_url, a['href'])
                if full_url not in links:
                    links.append(full_url)
        return links
    except requests.exceptions.RequestException as e:
        print(f"Error fetching set list from {set_url}: {e}")
        return []

def parse_range(range_str):
    """Parses the range string into range and range_targets."""
    if not range_str:
        return 0, 1
    range_val = 0
    targets = 1
    range_match = re.search(r'^(\d+)', range_str)
    if range_match:
        range_val = int(range_match.group(1))
    targets_match = re.search(r'\((\d+)\s*TARGETS?\)', range_str, re.IGNORECASE)
    if targets_match:
        targets = int(targets_match.group(1))
    return range_val, targets

def parse_mini_page(mini_url, set_name_from_url):
    """Parses a single miniature's page to extract all its data."""
    try:
        response = requests.get(mini_url, headers=HEADERS)
        response.raise_for_status()
        soup = BeautifulSoup(response.content, 'html.parser')

        # --- Extract Top-Level Information from the first info table ---
        info_table_td = soup.find('table').find('td')
        if not info_table_td:
            return [], set()
        info_text = info_table_td.get_text(separator=' ', strip=True)

        name_match = re.search(r'NAME:\s*(.*?)(?:\s*RANK:|$)', info_text, re.IGNORECASE)
        name = name_match.group(1).strip() if name_match else "Unknown"

        rank_match = re.search(r'RANK:\s*(\w+)', info_text, re.IGNORECASE)
        rank = rank_match.group(1).strip() if rank_match else "Unknown"

        faction_match = re.search(r'FACTION:\s*(.*?)(?:\s*UNIT COST:|$)', info_text, re.IGNORECASE)
        faction = faction_match.group(1).strip() if faction_match else "Unknown"

        unit_cost_match = re.search(r'UNIT COST:\s*(\d+)', info_text, re.IGNORECASE)
        point_cost = int(unit_cost_match.group(1)) if unit_cost_match else 0

        fig_num_match = re.search(r'FIG#:\s*(\d+)', info_text, re.IGNORECASE)
        collector_num = int(fig_num_match.group(1)) if fig_num_match else 0

        frq_match = re.search(r'FRQ:\s*(\d+)', info_text, re.IGNORECASE)
        frq = int(frq_match.group(1)) if frq_match else 0

        range_match_text = re.search(r'RANGE:\s*(.*?)(?:\s*ARC:|$)', info_text, re.IGNORECASE)
        range_text = range_match_text.group(1).strip() if range_match_text else ""
        range_val, range_targets = parse_range(range_text)

        arc_match = re.search(r'ARC:\s*(\d+)', info_text, re.IGNORECASE)
        arc = int(arc_match.group(1)) if arc_match else 0

        img_tag = soup.find('img')
        image_url = requests.compat.urljoin(mini_url, img_tag['src']) if img_tag else ''
        
        miniatures = []
        unique_abilities = set()

        # --- Extract Click Stats from the second and third tables ---
        stats_tables = soup.find_all('table')
        if len(stats_tables) < 3: # Need at least 3 tables (info, stats1, stats2)
            return [], set()

        all_clicks_data = []
        
        # Group rows by attribute type (Speed, Attack, etc.)
        # This needs to be done across all relevant stats tables first to determine max_clicks
        combined_grouped_rows = {}
        for stats_table in stats_tables[1:3]: # Process the second and third tables
            rows = stats_table.find_all('tr')
            if len(rows) < 2: continue # Skip if not enough rows for stats

            for i in range(1, len(rows)): # Start from 1 to skip click headers
                cells = rows[i].find_all('td')
                if not cells: continue
                
                attr_name_raw = cells[0].get_text(strip=True).lower()
                if not attr_name_raw: continue

                if attr_name_raw not in combined_grouped_rows:
                    combined_grouped_rows[attr_name_raw] = []
                # Extend with a list of cells for each click, not just the first cell
                combined_grouped_rows[attr_name_raw].extend(cells[1:])

        # Determine the maximum number of clicks (columns) across all stat types
        max_clicks = 0
        for attr_type in ["speed", "speed ability", "attack", "attack ability", "defense", "defense ability", "damage", "damage ability"]:
            if attr_type in combined_grouped_rows:
                max_clicks = max(max_clicks, len(combined_grouped_rows[attr_type]))

        # Initialize stats structure for this miniature's clicks with default values
        current_mini_stats = {
            "speed": [{"value": 0, "ability": None} for _ in range(max_clicks)],
            "attack": [{"value": 0, "ability": None} for _ in range(max_clicks)],
            "defense": [{"value": 0, "ability": None} for _ in range(max_clicks)],
            "damage": [{"value": 0, "ability": None} for _ in range(max_clicks)],
        }

        # Populate values and abilities for the current miniature's clicks
        for attr_type_raw, list_of_cells in combined_grouped_rows.items():
            for list_idx, cell in enumerate(list_of_cells):
                if list_idx >= max_clicks: continue # Should not happen with correct max_clicks

                if "ability" in attr_type_raw:
                    attr_type = attr_type_raw.replace(" ability", "")
                    ability_name = None
                    ability_color = cell.get('bgcolor', '#FFFFFF')
                    font_tag = cell.find('font')
                    if font_tag:
                        ability_text = font_tag.get_text(strip=True)
                        if ability_text and ability_text != "- - - -":
                            ability_name = ability_text
                            unique_abilities.add((ability_name, ability_color))
                    current_mini_stats[attr_type][list_idx]["ability"] = ability_name
                else:
                    attr_type = attr_type_raw
                    value_text = cell.get_text(strip=True)
                    value = int(re.search(r'^\d+', value_text).group(0)) if re.search(r'^\d+', value_text) else 0
                    current_mini_stats[attr_type][list_idx]["value"] = value

        # Combine into all_clicks_data
        # Create a dictionary for quick lookup of ability colors
        ability_color_map = {name: color for name, color in unique_abilities}

        for i in range(max_clicks):
            click_obj = {
                "click_number": i, # This should be 0-indexed for the miniature
                "speed": current_mini_stats['speed'][i]['value'],
                "attack": current_mini_stats['attack'][i]['value'],
                "defense": current_mini_stats['defense'][i]['value'],
                "damage": current_mini_stats['damage'][i]['value'],
                "speed_ability": current_mini_stats['speed'][i]['ability'],
                "attack_ability": current_mini_stats['attack'][i]['ability'],
                "defense_ability": current_mini_stats['defense'][i]['ability'],
                "damage_ability": current_mini_stats['damage'][i]['ability'],
            }
            
            # Assign colors based on the ability name from the map
            click_obj["speed_ability_color"] = ability_color_map.get(click_obj["speed_ability"], '#FFFFFF')
            click_obj["attack_ability_color"] = ability_color_map.get(click_obj["attack_ability"], '#FFFFFF')
            click_obj["defense_ability_color"] = ability_color_map.get(click_obj["defense_ability"], '#FFFFFF')
            click_obj["damage_ability_color"] = ability_color_map.get(click_obj["damage_ability"], '#FFFFFF')

            all_clicks_data.append(click_obj)

        # Handle Dungeon set unique cost (this logic might need adjustment based on actual page structure)
        if "Dungeon" in set_name_from_url and rank == "Unique":
            # Re-parse the info_text for Dungeon unique costs if needed, or rely on initial point_cost
            pass # Already handled by initial point_cost extraction

        miniatures.append({
            "name": name,
            "set_name": set_name_from_url,
            "faction": faction,
            "rank": rank,
            "point_cost": point_cost,
            "collector_number": collector_num,
            "frq": frq,
            "arc": arc,
            "range": range_val,
            "range_targets": range_targets,
            "image_url": image_url,
            "source_url": mini_url,
            "clicks": all_clicks_data
        })

        return miniatures, unique_abilities

    except requests.exceptions.HTTPError as e:
        print(f"  HTTP Error parsing {mini_url}: {e}")
        return [], set()
    except Exception as e:
        print(f"  CRITICAL ERROR parsing {mini_url}: {e}")
        import traceback
        traceback.print_exc()
        return [], set()

def scrape_all(sample_size=0, focus_set=None):
    """Main function to orchestrate the entire scraping process."""
    print("Starting the Mage Knight scraper... This may take several minutes.")
    all_miniatures = []
    all_abilities = set()

    # Canonical set name mapping
    CANONICAL_SET_NAMES = {
        "mkd": "mkd",
        "minions": "minions",
        "lancers": "lancers",
        "pyramid": "pyramid",
        "sinister": "sinister",
        "alpha": "alpha",
        "rebelli": "alpha", # Map rebelli to alpha
        "ww": "ww",
        "whirlwi": "ww", # Map whirlwi to ww
        "up": "up",
        "uprisin": "up", # Map uprisin to up
        "dungeon": "mkd", # Map dungeon to mkd
    }

    sets_to_process = list(SET_URLS)
    # Prioritize the focus_set by moving it to the beginning
    if focus_set:
        for i, url in enumerate(sets_to_process):
            if focus_set in url:
                sets_to_process.insert(0, sets_to_process.pop(i))
                break

    for set_url in sets_to_process:
        raw_set_name = set_url.split('/')[-1].split('.')[0]
        canonical_set_name = CANONICAL_SET_NAMES.get(raw_set_name, raw_set_name)

        mini_links = get_mini_links_from_set(set_url)
        print(f"Found {len(mini_links)} links in {raw_set_name} (canonical: {canonical_set_name})...")

        # Apply sampling for debugging
        if sample_size > 0:
            sample_links = random.sample(mini_links, min(len(mini_links), sample_size))
            print(f"Processing {len(sample_links)} sample links from {raw_set_name}...")
            links_to_process = sample_links
        else:
            print(f"Processing all {len(mini_links)} links from {raw_set_name}...")
            links_to_process = mini_links

        for mini_url in links_to_process:
            time.sleep(1.5)
            mini_url_parts = mini_url.split('/')
            mini_set_name_raw = mini_url_parts[-2] 
            mini_set_name = CANONICAL_SET_NAMES.get(mini_set_name_raw, mini_set_name_raw)

            minis, abilities = parse_mini_page(mini_url, mini_set_name)
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

    output_path = os.path.join(os.path.dirname(__file__), '..', 'minis.json')
    with open(output_path, 'w') as f:
        json.dump(final_data, f, indent=2)

    print(f"Successfully saved data for {len(all_miniatures)} miniatures to {output_path}")


if __name__ == "__main__":
    scrape_all()