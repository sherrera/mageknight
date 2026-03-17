import os
import hashlib
from sqlalchemy import create_engine, Column, Integer, String, Float
from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base

# --- Configuration ---
DATABASE_URL = "postgresql://mageknight_user:test@localhost:5432/mageknight_db"
IMAGE_BASE_DIR = os.path.join(os.path.dirname(__file__), '..', 'webapp', 'static', 'images')
PLACEHOLDER_MD5_HASH = "2be2b5429bc56b82aaa02800730fb122" # MD5 hash of "Picture Coming Soon" image

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

# --- Helper Functions ---
def calculate_md5(filepath):
    """Calculates the MD5 hash of a file."""
    if not os.path.exists(filepath):
        return None
    hash_md5 = hashlib.md5()
    with open(filepath, "rb") as f:
        for chunk in iter(lambda: f.read(4096), b""):
            hash_md5.update(chunk)
    return hash_md5.hexdigest()

def identify_and_mark_placeholders():
    """
    Identifies miniatures whose image_url points to a placeholder image
    and sets their image_url to NULL in the database.
    """
    session = Session()
    marked_count = 0
    checked_count = 0
    
    try:
        print("Querying for miniatures with existing image_urls...")
        minis_with_images = session.query(Miniature).filter(
            Miniature.image_url != None,
            Miniature.image_url != ''
        ).all()
        
        total = len(minis_with_images)
        if total == 0:
            print("No miniatures found with existing image_urls. Nothing to do.")
            return

        print(f"Found {total} miniatures with images to check for placeholders.")

        for i, mini in enumerate(minis_with_images):
            checked_count += 1
            if i % 100 == 0 and i > 0:
                print(f"Processed {i} of {total} miniatures...")

            # Construct absolute path to the image file
            # image_url is like /static/images/alpha/55.jpeg
            relative_path = mini.image_url.lstrip('/static/images/')
            filepath = os.path.join(IMAGE_BASE_DIR, relative_path)

            file_hash = calculate_md5(filepath)

            if file_hash == PLACEHOLDER_MD5_HASH:
                print(f"MARKING: '{mini.name}' (Set: {mini.set_name}, Num: {mini.collector_number}) image_url as NULL (placeholder detected).")
                mini.image_url = None
                marked_count += 1
        
        if marked_count > 0:
            print(f"\nCommitting {marked_count} updates to the database...")
            session.commit()
            print("Database update complete.")
        else:
            print("\nNo placeholder images found among the existing entries.")

    except Exception as e:
        print(f"\nAn error occurred: {e}")
        print("Rolling back any changes from this session.")
        session.rollback()
    finally:
        print(f"\nProcessed {checked_count} entries and marked {marked_count} placeholders.")
        print("Closing database session.")
        session.close()

if __name__ == "__main__":
    identify_and_mark_placeholders()
