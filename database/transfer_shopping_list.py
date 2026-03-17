
import os
from sqlalchemy import create_engine, Column, Integer, String, ForeignKey, Float
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker, relationship, joinedload
from datetime import datetime

# --- Database Setup ---
DATABASE_URL = "postgresql://mageknight_user:test@localhost:5432/mageknight_db"
Base = declarative_base()
engine = create_engine(DATABASE_URL)
Session = sessionmaker(bind=engine)

# --- ORM Models ---

class Miniature(Base):
    __tablename__ = 'miniatures'
    id = Column(Integer, primary_key=True)
    name = Column(String(255))
    # Add other fields if needed for display, but name is enough for this script
    
class ShoppingListItem(Base):
    __tablename__ = 'shopping_list_items'
    id = Column(Integer, primary_key=True)
    miniature_id = Column(Integer, ForeignKey('miniatures.id'), nullable=False)
    quantity = Column(Integer, nullable=False, default=1)
    miniature = relationship('Miniature')

class CollectionItem(Base):
    __tablename__ = 'collection_items'
    id = Column(Integer, primary_key=True)
    miniature_id = Column(Integer, ForeignKey('miniatures.id'), nullable=False, unique=True)
    quantity = Column(Integer, nullable=False, default=1)
    miniature = relationship('Miniature')

def transfer_shopping_list_to_collection():
    """
    Transfers items from the shopping list to the collection with a confirmation step.
    """
    session = Session()
    
    try:
        # 1. Read all items from the shopping list
        shopping_list_items = session.query(ShoppingListItem).options(
            joinedload(ShoppingListItem.miniature)
        ).all()

        if not shopping_list_items:
            print("Shopping list is empty. Nothing to transfer.")
            return

        # 2. Prepare a summary of proposed changes
        proposed_changes = []
        for item in shopping_list_items:
            collection_item = session.query(CollectionItem).filter_by(
                miniature_id=item.miniature_id
            ).first()

            if collection_item:
                # This item already exists in the collection, plan an UPDATE
                new_quantity = collection_item.quantity + item.quantity
                change_summary = (
                    f"UPDATE: Miniature '{item.miniature.name}' in collection "
                    f"from quantity {collection_item.quantity} to {new_quantity}."
                )
                proposed_changes.append({
                    "action": "update",
                    "item": collection_item,
                    "new_quantity": new_quantity,
                    "summary": change_summary
                })
            else:
                # This is a new item for the collection, plan an ADD
                change_summary = (
                    f"ADD: Miniature '{item.miniature.name}' "
                    f"(Quantity: {item.quantity}) to collection."
                )
                proposed_changes.append({
                    "action": "add",
                    "miniature_id": item.miniature_id,
                    "quantity": item.quantity,
                    "summary": change_summary
                })

        # 3. Display the summary to the user
        print("--- Proposed Changes ---")
        for change in proposed_changes:
            print(change["summary"])
        print("------------------------")

        # 4. Ask for confirmation
        confirm = input("Do you want to apply these changes? (yes/no): ").lower().strip()

        if confirm == 'yes':
            print("\nApplying changes...")
            # 5. Execute the changes
            for change in proposed_changes:
                if change["action"] == "update":
                    change["item"].quantity = change["new_quantity"]
                elif change["action"] == "add":
                    new_collection_item = CollectionItem(
                        miniature_id=change["miniature_id"],
                        quantity=change["quantity"]
                    )
                    session.add(new_collection_item)
            
            # 6. Clear the shopping list
            session.query(ShoppingListItem).delete()
            
            session.commit()
            print("Successfully transferred items to collection and cleared shopping list.")
        else:
            print("\nOperation cancelled. No changes were made to the database.")
            session.rollback()

    except Exception as e:
        print(f"An error occurred: {e}")
        session.rollback()
    finally:
        session.close()

if __name__ == "__main__":
    transfer_shopping_list_to_collection()
