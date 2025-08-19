import re
import psycopg2
from psycopg2.extras import RealDictCursor

# The raw text from the user
data = '''
CRYSTAL PROTECTOR
http://www.knight-ware.com/cmg/mageknight/minions/%2010.html
https://www.nobleknight.com/P/2147437668/Crystal-Protector-010?SS=USD -> $1.50
https://www.nobleknight.com/P/2147424508/Crystal-Protector-011

AMOTEP GUNNER
https://www.nobleknight.com/P/2147424272/Amotep-Gunner-051 $2

Skeleton
https://www.nobleknight.com/P/2147424790/Skeleton-124 > $3

THROTTLE WORMS
https://www.nobleknight.com/P/2147424513/Throttle-Worms-017 $1.50

TORMENTED SOUL
https://www.nobleknight.com/P/2147438764/Tormented-Soul-075 $3
https://www.nobleknight.com/P/2147438826/Tormented-Soul-074

SOLONAVI DRONE
https://www.nobleknight.com/P/2147437673/Solonavi-Drone-059 $2

STEAM GOLEM
https://www.nobleknight.com/P/2147424948/Steam-Golem-095 $1.50

Shield Golem
https://www.nobleknight.com/P/2147437532/Shield-Golem-062 $7

INFANTRY CAPTAIN
https://www.nobleknight.com/P/2147453682/Infantry-Captain-056 $1.50

TEMPLE BLADEMASTER
https://www.nobleknight.com/P/2147424275/Temple-Blademaster-107 $1.50

BLADE GOLEM
https://www.nobleknight.com/P/2147423248/Blade-Golem-055 $1.50

ALTEM GUARDSMAN
https://www.nobleknight.com/P/2147424949/Altem-Guardsman-060 $1.50

MAGESTONE LORD
https://www.nobleknight.com/P/2147453792/Magestone-Lord-034
https://www.nobleknight.com/P/2147424635/Magestone-Lord-036 $1.50

Prieskan Barbarian
https://www.nobleknight.com/P/2147464181/Prieskan-Barbarian-037 $1.50

SPLINTER 
https://www.nobleknight.com/P/2147439865/Splinter-Limited-Edition $2


https://www.nobleknight.com/P/2147424592/Warbear-038 $1.50

https://www.nobleknight.com/P/2147424519/Whelp-Monk-014 $2

https://www.nobleknight.com/P/2147424223/Grave-Robber-031 $1.50

https://www.nobleknight.com/P/2147424487/Nightfiend-047 $2

https://www.nobleknight.com/P/2147438963/Wind-Minion-061-Unique $4

https://www.nobleknight.com/P/2147424540/Khamsin-Sniper-023 $1.50

https://www.nobleknight.com/P/2147439024/Warrior-Huhn-Unique $9.50

https://www.nobleknight.com/P/2147424553/Tribow-071 $1.50

https://www.nobleknight.com/P/2147424683/Elf-at-Arms-030 $1.50

https://www.nobleknight.com/P/2147430337/Immortal-Fanatic-063 1.50

https://www.nobleknight.com/P/2147424601/Gyre-Falcon-048 3.00
'''

# Database connection details
DB_URL = "postgresql://mageknight_user:test@localhost:5432/mageknight_db"

def get_db_connection():
    return psycopg2.connect(DB_URL)

def find_miniature_id(conn, name, collector_number=None):
    cursor = conn.cursor(cursor_factory=RealDictCursor)
    # Use word boundaries for name matching to avoid matching substrings
    query = "SELECT id FROM miniatures WHERE name ILIKE %s"
    params = [f'%{name}%']
    
    if collector_number:
        query += " AND collector_number = %s"
        params.append(collector_number)
    
    cursor.execute(query, tuple(params))
    result = cursor.fetchone()
    cursor.close()
    return result['id'] if result else None

def add_to_shopping_list(conn, miniature_id, store_link, price):
    cursor = conn.cursor()
    # Check if this exact item (mini + link) is already in the list
    cursor.execute("SELECT id FROM shopping_list_items WHERE miniature_id = %s AND store_link = %s", (miniature_id, store_link))
    if cursor.fetchone():
        print(f"Item with miniature_id {miniature_id} and link {store_link} already exists. Skipping.")
        cursor.close()
        return

    cursor.execute(
        "INSERT INTO shopping_list_items (miniature_id, store_link, price, added_at) VALUES (%s, %s, %s, NOW())",
        (miniature_id, store_link, price)
    )
    conn.commit()
    print(f"Added miniature_id {miniature_id} with link {store_link} to shopping list.")
    cursor.close()

def parse_and_add():
    conn = get_db_connection()
    
    url_pattern = re.compile(r'https?://[\S]+')
    price_pattern = re.compile(r'\$?(\d+\.\d+)')
    name_pattern = re.compile(r'^[A-Z\s]+$')
    
    blocks = data.strip().split('\n\n')
    
    for block in blocks:
        lines = [line.strip() for line in block.strip().split('\n') if line.strip()]
        
        current_name = None
        if name_pattern.match(lines[0]):
            current_name = lines[0].strip()

        for line in lines:
            if name_pattern.match(line):
                current_name = line.strip()

            if 'http' not in line:
                continue

            url = url_pattern.search(line).group(0)
            price_match = price_pattern.search(line)
            price = float(price_match.group(1)) if price_match else None
            
            name_from_url = None
            collector_number = None
            
            match = re.search(r'/([^/]+)-(\d+)', url)
            if not match:
                 match = re.search(r'/([^/]+)-([^-/]+)$', url)

            if match:
                name_from_url = match.group(1).replace('-', ' ').replace('+', ' ')
                # Check if the second group is a number
                if match.group(2).isdigit():
                    collector_number = int(match.group(2))

            final_name = current_name if current_name else name_from_url

            if not final_name:
                print(f"Could not determine name for URL: {url}. Skipping.")
                continue

            miniature_id = find_miniature_id(conn, final_name, collector_number)
            
            if not miniature_id and collector_number:
                # Try again without collector number as a fallback
                miniature_id = find_miniature_id(conn, final_name)

            if miniature_id:
                add_to_shopping_list(conn, miniature_id, url, price)
            else:
                print(f"Could not find miniature '{final_name}' (Collector #: {collector_number}) in the database. Skipping.")

    conn.close()

if __name__ == '__main__':
    parse_and_add()
