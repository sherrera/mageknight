from sqlalchemy import create_engine, MetaData, Table
from sqlalchemy.orm import sessionmaker
from webapp.app import Base # Assuming Base is imported from app.py

DATABASE_URL = "postgresql://mageknight_user:test@localhost:5432/mageknight_db"
engine = create_engine(DATABASE_URL)
Session = sessionmaker(bind=engine)

def drop_shopping_list_table():
    print("Attempting to drop 'shopping_list_items' table...")
    try:
        # Reflect the table to get its metadata
        metadata = MetaData()
        shopping_list_table = Table('shopping_list_items', metadata, autoload_with=engine)
        shopping_list_table.drop(engine)
        print("'shopping_list_items' table dropped successfully.")
    except Exception as e:
        print(f"Error dropping table: {e}")
        print("This might happen if the table does not exist, which is fine.")

if __name__ == '__main__':
    drop_shopping_list_table()
    print("Please restart your Flask server (webapp/app.py) to recreate the table with the new schema.")