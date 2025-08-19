
import os
from sqlalchemy import create_engine, Column, Integer, String, ForeignKey, Float, Table
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker, relationship

# Database connection details
DATABASE_URL = "postgresql://mageknight_user:test@localhost:5432/mageknight_db"

Base = declarative_base()

# Define the new collection table
class CollectionItem(Base):
    __tablename__ = 'collection_items'
    id = Column(Integer, primary_key=True)
    miniature_id = Column(Integer, ForeignKey('miniatures.id'), nullable=False)
    quantity = Column(Integer, nullable=False, default=1)

    miniature = relationship('Miniature')

def add_collection_table():
    """Adds the collection_items table to the database."""
    engine = create_engine(DATABASE_URL)
    Base.metadata.create_all(engine)
    print("Successfully added the 'collection_items' table to the database.")

if __name__ == "__main__":
    add_collection_table()
