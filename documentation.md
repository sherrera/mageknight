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

### 2. Data Cleaning & Processing Scripts

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

