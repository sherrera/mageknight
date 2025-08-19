import requests
from bs4 import BeautifulSoup
import json
import time
import re
import os

# Base URL for the website
BASE_URL = "http://www.knight-ware.com/cmg/mageknight/"

# List of main set pages (only Alpha for debugging Rebellion)
SET_URLS = [
    "http://www.knight-ware.com/cmg/mageknight/alpha.html",
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
        # Collect all stat rows from both tables
        all_stat_rows = []
        for stats_table in stats_tables[1:3]:
            all_stat_rows.extend(stats_table.find_all('tr'))

        # Group rows by attribute type (Speed, Attack, etc.)
        grouped_rows = {}
        for row in all_stat_rows:
            cells = row.find_all('td')
            if not cells: continue
            header_cell_text = cells[0].get_text(strip=True).lower()
            if header_cell_text not in grouped_rows:
                grouped_rows[header_cell_text] = []
            grouped_rows[header_cell_text].append(cells[1:]) # Append all data cells

        # Determine the maximum number of clicks (columns) across all stat types
        max_clicks = 0
        for attr_type in ["speed", "speed ability", "attack", "attack ability", "defense", "defense ability", "damage", "damage ability"]:
            if attr_type in grouped_rows:
                for row_cells in grouped_rows[attr_type]:
                    max_clicks = max(max_clicks, len(row_cells))

        # Iterate through each click (column) to build click_obj
        for i in range(max_clicks):
            click_obj = {
                "click_number": len(all_clicks_data) + i, # Global click number
                "speed": 0,
                "attack": 0,
                "defense": 0,
                "damage": 0,
                "speed_ability": None,
                "speed_ability_color": '#FFFFFF',
                "attack_ability": None,
                "attack_ability_color": '#FFFFFF',
                "defense_ability": None,
                "defense_ability_color": '#FFFFFF',
                "damage_ability": None,
                "damage_ability_color": '#FFFFFF',
            }

            # Populate values and abilities for the current click
            for attr_type_raw in grouped_rows.keys():
                if attr_type_raw in grouped_rows and i < len(grouped_rows[attr_type_raw]):
                    cell = grouped_rows[attr_type_raw][i]
                    
                    if "ability" in attr_type_raw:
                        attr_type = attr_type_raw.replace(" ability", "")
                        ability_name = None
                        ability_color = cell[0].get('bgcolor', '#FFFFFF') # Get bgcolor from the cell itself
                        font_tag = cell[0].find('font')
                        if font_tag:
                            ability_text = font_tag.get_text(strip=True)
                            if ability_text and ability_text != "- - - -":
                                ability_name = ability_text
                                unique_abilities.add((ability_name, ability_color))
                        click_obj[f"{attr_type}_ability"] = ability_name
                        click_obj[f"{attr_type}_ability_color"] = ability_color
                    else:
                        value_text = cell[0].get_text(strip=True)
                        value = int(re.search(r'^\d+', value_text).group(0)) if re.search(r'^\d+', value_text) else 0
                        click_obj[attr_type_raw] = value
            
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

def scrape_all():
    """Main function to orchestrate the entire scraping process."""
    print("Starting the Mage Knight scraper for Rebellion set debugging...")
    all_miniatures = []
    all_abilities = set()

    target_set_url = "http://www.knight-ware.com/cmg/mageknight/alpha.html"
    set_name = target_set_url.split('/')[-1].split('.')[0]
    mini_links = get_mini_links_from_set(target_set_url)
    print(f"Found {len(mini_links)} links in {set_name}...")

    print(f"Processing {len(mini_links)} links from {set_name}...")

    for mini_url in mini_links:
        time.sleep(1.5)
        minis, abilities = parse_mini_page(mini_url, set_name)
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

    output_path = os.path.join(os.path.dirname(__file__), '..', 'rebellion_minis.json')
    with open(output_path, 'w') as f:
        json.dump(final_data, f, indent=2)

    print(f"Successfully saved data for {len(all_miniatures)} miniatures to {output_path}")


if __name__ == "__main__":
    scrape_all()
