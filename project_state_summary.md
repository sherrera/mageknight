# Mage Knight Miniatures Database - Project Documentation

## Project Overview

The goal of this project is to create a comprehensive database of Mage Knight miniatures from various sets. This is achieved by scraping data from the Knight-Ware website, storing it in a PostgreSQL database, and providing a simple Flask web interface to browse and filter the data.

## Current Components & Functionality

### 1. Web Scraper (`scraper.py`)

*   **Purpose:** Extracts detailed miniature data from the Knight-Ware website.
*   **Data Points Captured:** Name, Faction, Rank, Unit Cost, Collector Number, FRQ (Frequency), Arc, Range, Range Targets, Image URL, Source URL, and click-by-click stats (Speed, Attack, Defense, Damage, and associated abilities with their colors).
*   **Respectful Scraping:** Implements rate limiting (1.5 seconds delay between requests) and sets a `User-Agent` header to avoid overwhelming the target website.
*   **Local Image Storage:** Downloads miniature images locally to `webapp/static/images/` and updates the `image_url` in the JSON output to point to these local files. Images are organized by set name and named by collector number.
*   **Canonical Set Names:** Derives the set name from the individual miniature's URL path and maps it to a canonical set name (e.g., "rebelli" maps to "alpha", "uprisin" to "up", "whirlwi" to "ww", "dungeon" to "mkd") to ensure data consistency.
*   **Current Status:** The parsing logic is believed to be robust after extensive debugging with random sampling. The last test run (random sampling) completed without `NameError` or `IndexError`.

### 2. Data Processing Scripts (in `database/`)

These Python scripts are located in the `database/` directory and are designed to refine the raw scraped data before it's loaded into the database.

*   **`fix_click_numbers.py`:**
    *   **Purpose:** Corrects the `click_number` field for each miniature's clicks. The scraper initially extracts click numbers as they appear on the website, which can be inconsistent. This script re-indexes them to be consistently 0-based (0 to 11 or 0 to 12 depending on the number of clicks).
    *   **Input:** `minis.json` (or `minis_final.json`)
    *   **Output:** `minis_fixed.json`

*   **`download_images.py`:**
    *   **Purpose:** Downloads all miniature images from their original URLs to local storage and updates the `image_url` paths in the JSON data to point to these local files. This improves performance and reduces reliance on the external website.
    *   **Input:** `minis_merged.json`
    *   **Output:** `minis_final.json`

*   **`clean_abilities.py`:**
    *   **Purpose:** Canonicalizes ability names to resolve inconsistencies and typos (e.g., "MAGICENHANCEMENT", "MAGICENHANCEMNT" are mapped to "MAGIC ENHANCEMENT"). It also ensures that the `unique_abilities` list contains only canonical, non-duplicated entries.
    *   **Input:** `minis_final.json`
    *   **Output:** `minis_cleaned.json`

*   **`merge_data.py`:**
    *   **Purpose:** Merges data from different JSON files, specifically designed to integrate corrected data for a particular set (e.g., "rebellion" minis) back into the main dataset. It handles duplicates by prioritizing data from the specified merge-in file.
    *   **Input:** `minis_fixed.json` (main data) and `rebellion_minis_fixed.json` (specific set data)
    *   **Output:** `minis_merged.json`

### 3. PostgreSQL Database

*   **Database Name:** `mageknight_db`
*   **User:** `mageknight_user` (password: `test`)
*   **Schema:**
    *   **`abilities` table:** Stores unique ability names and their associated colors.
        *   `id` (Primary Key)
        *   `name` (VARCHAR, Unique, NOT NULL)
        *   `color` (VARCHAR)
    *   **`miniatures` table:** Stores core information about each miniature.
        *   `id` (Primary Key)
        *   `name` (VARCHAR)
        *   `set_name` (VARCHAR)
        *   `faction` (VARCHAR)
        *   `rank` (VARCHAR)
        *   `point_cost` (INTEGER)
        *   `collector_number` (INTEGER)
        *   `frq` (INTEGER)
        *   `arc` (INTEGER)
        *   `range` (INTEGER)
        *   `range_targets` (INTEGER)
        *   `image_url` (VARCHAR) - local path
        *   `source_url` (VARCHAR) - original web URL
    *   **`click_stats` table:** Stores the detailed stats for each click of a miniature's dial.
        *   `id` (Primary Key)
        *   `miniature_id` (INTEGER, Foreign Key to `miniatures.id`)
        *   `click_number` (INTEGER)
        *   `speed` (INTEGER)
        *   `attack` (INTEGER)
        *   `defense` (INTEGER)
        *   `damage` (INTEGER)
        *   `speed_ability_id` (INTEGER, Foreign Key to `abilities.id`, Nullable)
        *   `attack_ability_id` (INTEGER, Foreign Key to `abilities.id`, Nullable)
        *   `defense_ability_id` (INTEGER, Foreign Key to `abilities.id`, Nullable)
        *   `damage_ability_id` (INTEGER, Foreign Key to `abilities.id`, Nullable)

*   **`load_to_db.py`:**
    *   **Purpose:** Connects to the PostgreSQL database, drops existing tables (for a clean load), creates the schema, and populates the `abilities`, `miniatures`, and `click_stats` tables from `minis_cleaned.json`.

### 4. Flask Web Application (`webapp/app.py`)

*   **Purpose:** Provides a web interface to browse and filter the Mage Knight miniature data stored in the PostgreSQL database.
*   **Endpoints:**
    *   `/`: Renders the main `index.html` page.
    *   `/api/minis`: API endpoint that queries the PostgreSQL database for miniatures based on various filter criteria and returns the data as JSON.
    *   `/api/distinct_values`: API endpoint that returns unique `faction` and `rank` values from the database to populate frontend dropdowns.
*   **Filtering Capabilities:** Supports filtering by Name (case-insensitive), Faction (multi-select), Rank (multi-select), Minimum FRQ, Cost Range (min-max), Range (min-max), and Range Targets (min-max).
*   **Data Loading:** Uses SQLAlchemy ORM to interact with the PostgreSQL database, including eager loading of related `ClickStat` and `Ability` objects to prevent `DetachedInstanceError`.

### 5. Frontend (`webapp/templates/index.html` & `webapp/static/js/app.js`)

*   **`index.html`:** Provides the HTML structure for the web interface, including input fields and multi-select dropdowns for filtering, and a container to display the miniature cards.
*   **`app.js`:**
    *   Fetches distinct faction and rank values from `/api/distinct_values` to populate dropdowns.
    *   Constructs API requests to `/api/minis` based on user filter selections.
    *   Dynamically renders miniature cards, including local images and ability details with correct colors.

## Key Challenges Encountered & Resolutions

*   **Scraper HTML Parsing:** Inconsistent HTML structure on `knight-ware.com` required robust regex and BeautifulSoup logic for name, rank, cost, FRQ, arc, range, and click stats.
*   **`IndexError` / `NameError` in Scraper:** Resolved by ensuring `max_clicks` was calculated before `current_mini_stats` initialization and by using `extend` for `combined_grouped_rows`.
*   **`DetachedInstanceError` in Flask:** Resolved by ensuring SQLAlchemy relationships were eagerly loaded (`joinedload`) before the session was closed.
*   **Inconsistent Set Names:** Resolved by implementing `CANONICAL_SET_NAMES` mapping in `scraper.py` and deriving `set_name` from individual miniature URLs.
*   **Duplicated Abilities:** Resolved by refining `clean_abilities.py` to ensure only canonical names are in the `unique_abilities` list and by clearing the `abilities` table in `load_to_db.py` before populating.
*   **Image Loading:** Switched from direct URL linking to local image download and serving via Flask static files.

## Next Steps (Precise Order)

*   **Step 1: Run Full Scrape (`scraper.py`)**
    *   **Action:** Execute `scraper/venv/bin/python scraper/scraper.py`.
    *   **Purpose:** Generate a complete `minis.json` file with all miniatures, correct set names, and original image URLs. This will take a long time.
    *   **Expected Outcome:** A `minis.json` file in the project root containing all scraped data. No `CRITICAL ERROR` messages in the console.

*   **Step 2: Download All Images (`download_images.py`)**
    *   **Action:** Execute `scraper/venv/bin/python database/download_images.py`.
    *   **Purpose:** Download all images referenced in the newly generated `minis.json` to `webapp/static/images/` and create `minis_final.json` with updated local image paths.
    *   **Expected Outcome:** Images downloaded to `webapp/static/images/` and a `minis_final.json` file with local image URLs.

*   **Step 3: Clean Abilities (`clean_abilities.py`)**
    *   **Action:** Execute `scraper/venv/bin/python database/clean_abilities.py`.
    *   **Purpose:** Canonicalize ability names in `minis_final.json` and create `minis_cleaned.json` with unique, canonical ability entries.
    *   **Expected Outcome:** A `minis_cleaned.json` file with correctly cleaned ability names.

*   **Step 4: Load Data to Database (`load_to_db.py`)**
    *   **Action:** Execute `scraper/venv/bin/python database/load_to_db.py`.
    *   **Purpose:** Clear the PostgreSQL database and load all data from `minis_cleaned.json` into the `abilities`, `miniatures`, and `click_stats` tables.
    *   **Expected Outcome:** Database populated with clean, consistent data. The console output should show the correct number of unique abilities (40) and miniatures loaded.

*   **Step 5: Verify Web Application**
    *   **Action:** Restart the Flask application (`scraper/venv/bin/python webapp/app.py`) and refresh your web browser.
    *   **Purpose:** Confirm that all miniatures are displayed, images load locally, ability names are canonical, and all filters (including multi-selects and ranges) function correctly.
    *   **Expected Outcome:** A fully functional web application displaying all data accurately with working filters.
