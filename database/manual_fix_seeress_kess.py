import os
import requests
from sqlalchemy import create_engine, Column, Integer, String, Float
from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base
import shutil

# --- Configuration ---
DATABASE_URL = "postgresql://mageknight_user:test@localhost:5432/mageknight_db"
IMAGE_BASE_DIR = os.path.join(os.path.dirname(__file__), '..', 'webapp', 'static', 'images')

# --- Miniature Details ---
MINI_NAME = "Seeress Kess"
MINI_SET = "up"
MINI_COLLECTOR_NUMBER = 95
IMAGE_SOURCE_URL = "https://image.nobleknight.com/2/jpg1500/2107492020h.jpg"

# --- SQLAlchemy Setup ---
Base = declarative_base()

class Miniature(Base):
    __tablename__ = 'miniatures'
    id = Column(Integer, primary_key=True)
    name = Column(String(255))
    set_name = Column(String(255))
    collector_number = Column(Integer)
    image_url = Column(String(255))
    # Add other columns as needed to match the model, though they aren't used in this script
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

def manual_fix_image():
    session = Session()
    try:
        # 1. Download the image
        set_image_dir = os.path.join(IMAGE_BASE_DIR, MINI_SET)
        os.makedirs(set_image_dir, exist_ok=True)
        
        local_filename = f"{MINI_COLLECTOR_NUMBER}.jpg"
        local_path = os.path.join(set_image_dir, local_filename)
        web_path = f"/static/images/{MINI_SET}/{local_filename}"

        print(f"Attempting to download image for '{MINI_NAME}' from {IMAGE_SOURCE_URL} to {local_path}")
        response = requests.get(IMAGE_SOURCE_URL, stream=True, timeout=10)
        response.raise_for_status()

        with open(local_path, 'wb') as out_file:
            shutil.copyfileobj(response.raw, out_file)
        print(f"Successfully downloaded image to {local_path}")

        # 2. Update the database
        mini = session.query(Miniature).filter_by(name=MINI_NAME, set_name=MINI_SET, collector_number=MINI_COLLECTOR_NUMBER).first()
        if mini:
            print(f"Updating image_url for '{MINI_NAME}' in database to {web_path}")
            mini.image_url = web_path
            session.commit()
            print("Database updated successfully.")
        else:
            print(f"WARNING: Miniature '{MINI_NAME}' not found in database. Image downloaded but DB not updated.")

    except requests.exceptions.RequestException as e:
        print(f"ERROR: Failed to download image for '{MINI_NAME}': {e}")
        session.rollback()
    except Exception as e:
        print(f"An unexpected error occurred: {e}")
        session.rollback()
    finally:
        session.close()

if __name__ == "__main__":
    manual_fix_image()
