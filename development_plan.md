# Mage Knight Miniatures Database - Development Plan

## Project Overview

The goal of this project is to create a comprehensive database of Mage Knight miniatures from various sets. This will be achieved by scraping data from the Knight-Ware website, storing it in a PostgreSQL database, and providing a simple web interface to browse and filter the data.

## Phase 1: Web Scraping

**Goal:** Extract all miniature data from the provided URLs into a single, structured JSON file that captures all attributes and click-by-click details.

**Technology:** Python with the `requests` and `BeautifulSoup4` libraries.

**Scraping Etiquette:**

To ensure the scraper is respectful to the website and avoids being blocked, the following measures will be implemented:

*   **Rate Limiting:** A delay (e.g., 1-2 seconds) will be introduced between each HTTP request to the server.
*   **User-Agent:** A `User-Agent` header will be set in the requests to identify the script.
*   **robots.txt:** The script will check for and respect the `robots.txt` file on `knight-ware.com`.

**Steps:**

1.  **Setup:**
    *   Create a Python virtual environment.
    *   Install `requests` and `beautifulsoup4`.
    *   Create a script named `scraper.py`.

2.  **Crawl Set Pages:**
    *   The script will have a list of the main set URLs provided.
    *   It will iterate through each of these URLs to find the links to individual miniature pages.

3.  **Scrape Miniature Pages:**
    *   For each miniature page, the script will parse the data for each rank (Weak, Standard, Tough, Unique), ignoring "Promo" versions.
    *   For each rank, it will extract:
        *   **Core Info:** `name`, `set_name`, `faction`, `rank`, `point_cost`, `collector_number`, `frq`, `arc`, and the miniature's `image_url`.
        *   **Range:** The range text (e.g., "12 (2 TARGETS)") will be parsed into two separate numeric fields: `range` (e.g., 12) and `range_targets` (e.g., 2). If targets are not specified, `range_targets` will default to 1.
        *   **Click-by-Click Data:** For each of the 11 clicks on the dial, it will extract the numeric values for `speed`, `attack`, `defense`, and `damage`, along with any special ability text and its corresponding background color.
    *   **Special Handling:** For "Unique" miniatures from the "Dungeon" set, the script will identify all listed costs and select the highest one.

4.  **Data Output (`minis.json`):**
    *   The scraped data will be saved to `minis.json` with a clear, nested structure.
    *   The JSON will have two top-level keys:
        *   `unique_abilities`: A list of unique ability objects, where each object contains the `name` and `color` (e.g., `[{ "name": "Charge", "color": "#FF0000" }, { "name": "Flight", "color": "#FFFFFF" }]`).
        *   `miniatures`: A list of miniature objects. Each object will contain all core info and a `clicks` array.
            ```json
            {
              "name": "Magus Draconum",
              "set_name": "Rebellion",
              "faction": "Draconum",
              "rank": "Unique",
              "point_cost": 93,
              "collector_number": 158,
              "frq": 6,
              "arc": 90,
              "range": 12,
              "range_targets": 2,
              "image_url": "http://www.knight-ware.com/cmg/mageknight/rebelli/158.gif",
              "clicks": [
                {
                  "click_number": 0,
                  "speed": 8,
                  "attack": 12,
                  "defense": 17,
                  "damage": 4,
                  "speed_ability": "Flight",
                  "attack_ability": "Magic Blast",
                  "defense_ability": "Magic Immunity",
                  "damage_ability": "Magic Enhancement"
                }
              ]
            }
            ```

## Phase 2: Database and Data Loading

**Goal:** Store the structured data from `minis.json` into a normalized PostgreSQL database.

**Technology:** Python with `SQLAlchemy` for database interaction.

**Steps:**

1.  **Database Schema:**
    *   A PostgreSQL database will be used with a normalized three-table schema.

    **`abilities` table:** Stores each unique special ability and its intrinsic color.
    ```sql
    CREATE TABLE abilities (
        id SERIAL PRIMARY KEY,
        name VARCHAR(255) UNIQUE NOT NULL,
        color VARCHAR(7)
    );
    ```

    **`miniatures` table:** Stores the core, static information for each miniature version.
    ```sql
    CREATE TABLE miniatures (
        id SERIAL PRIMARY KEY,
        name VARCHAR(255),
        set_name VARCHAR(255),
        faction VARCHAR(255),
        rank VARCHAR(50),
        point_cost INT,
        collector_number INT,
        frq INT,
        arc INT,
        range INT,
        range_targets INT,
        image_url VARCHAR(255)
    );
    ```

    **`click_stats` table:** Stores the attributes for every click of a miniature's dial, linking to miniatures and abilities.
    ```sql
    CREATE TABLE click_stats (
        id SERIAL PRIMARY KEY,
        miniature_id INT REFERENCES miniatures(id),
        click_number INT,
        speed INT,
        attack INT,
        defense INT,
        damage INT,
        speed_ability_id INT REFERENCES abilities(id),
        attack_ability_id INT REFERENCES abilities(id),
        defense_ability_id INT REFERENCES abilities(id),
        damage_ability_id INT REFERENCES abilities(id)
    );
    ```

2.  **Data Loading Script (`load_to_db.py`):**
    *   The script will connect to the database using `SQLAlchemy`.
    *   It will read and parse `minis.json`.
    *   **Step 1: Populate Abilities:** It will first iterate through the `unique_abilities` list in the JSON and insert each one (with its name and color) into the `abilities` table. It will store a mapping of `ability_name -> ability_id`.
    *   **Step 2: Populate Miniatures and Clicks:** It will then iterate through the `miniatures` list in the JSON. For each miniature:
        *   Insert all the core data (name, cost, collector_number, etc.) into the `miniatures` table and retrieve the new `miniature_id`.
        *   Iterate through the `clicks` array. For each click object:
            *   Look up the IDs for any abilities using the name-to-ID map.
            *   Insert a new row into the `click_stats` table with all the numeric values and the correct foreign keys (`miniature_id` and ability IDs).

## Phase 3: Web Application and UI

**Goal:** Create a simple web interface to browse and filter the miniature data.

**Technology:** Python with `Flask` and `Flask-SQLAlchemy`. Basic HTML, CSS, and JavaScript for the frontend.

**Steps:**

1.  **Project Setup:**
    *   Create a new directory for the web application.
    *   Set up a Flask project with the necessary extensions (`Flask-SQLAlchemy`).
    *   Configure the database connection.

2.  **Backend (API):**
    *   Create a Flask route (e.g., `/api/minis`) that queries the database and returns a list of all miniatures in JSON format.
    *   Enhance this endpoint to accept query parameters for filtering (e.g., `/api/minis?faction=undead&set=lancers`).

3.  **Frontend (UI):**
    *   Create an `index.html` file.
    *   This file will contain:
        *   A table to display the list of miniatures.
        *   Filter controls (e.g., dropdowns for `faction` and `set`, a text input for `name`).
    *   Write JavaScript code to:
        *   Fetch data from the `/api/minis` endpoint when the page loads.
        *   Update the table with the fetched data.
        *   Re-fetch data with filter parameters when the user interacts with the filter controls.

## Proposed Project Structure

```
mageknight/
├── development_plan.md
├── scraper/
│   ├── scraper.py
│   └── requirements.txt
├── database/
│   ├── load_to_db.py
│   └── requirements.txt
├── webapp/
│   ├── app.py
│   ├── templates/
│   │   └── index.html
│   ├── static/
│   │   ├── css/
│   │   │   └── style.css
│   │   └── js/
│   │       └── app.js
│   └── requirements.txt
└── minis.json (output of Phase 1)
```
