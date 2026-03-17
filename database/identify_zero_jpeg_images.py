import os
from sqlalchemy import create_engine, Column, Integer, String, Float, or_
from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base

# --- Configuration ---
DATABASE_URL = "postgresql://mageknight_user:test@localhost:5432/mageknight_db"

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

def identify_and_mark_zero_jpeg_images():
    """
    Identifies miniatures whose image_url points to a '0.jpeg' or '0.jpg' file
    and sets their image_url to NULL in the database.
    """
    session = Session()
    marked_count = 0
    
    try:
        print("Querying for miniatures with image_url ending in '0.jpeg' or '0.jpg'...")
        minis_to_mark = session.query(Miniature).filter(
            or_(
                Miniature.image_url.like('%/0.jpeg'),
                Miniature.image_url.like('%/0.jpg')
            )
        ).all()
        
        total = len(minis_to_mark)
        if total == 0:
            print("No miniatures found with image_url ending in '0.jpeg' or '0.jpg'. Nothing to do.")
            return

        print(f"Found {total} miniatures to mark as missing images.")

        for i, mini in enumerate(minis_to_mark):
            print(f"MARKING: '{mini.name}' (Set: {mini.set_name}, Num: {mini.collector_number}) image_url from '{mini.image_url}' to NULL.")
            mini.image_url = None
            marked_count += 1
        
        if marked_count > 0:
            print(f"\nCommitting {marked_count} updates to the database...")
            session.commit()
            print("Database update complete.")
        else:
            print("\nNo miniatures needed to be marked.")

    except Exception as e:
        print(f"\nAn error occurred: {e}")
        print("Rolling back any changes from this session.")
        session.rollback()
    finally:
        print(f"\nProcessed {total} entries and marked {marked_count} placeholders.")
        print("Closing database session.")
        session.close()

if __name__ == "__main__":
    identify_and_mark_zero_jpeg_images()
