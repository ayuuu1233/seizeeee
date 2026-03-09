from pymongo import MongoClient
import os


MONGO_URI = os.getenv("mongodb+srv://Ayuu123_db_user:kawaiiibot124@cluster0.jqv8tga.mongodb.net/?appName=Cluster0")
DB_NAME = os.getenv("DB_NAME", "kawaiiibot124")
COLLECTION_NAME = "users"

client = MongoClient(MONGO_URI)
db = client[DB_NAME]
collection = db[COLLECTION_NAME]

def get_user_data(user_id):
    return collection.find_one({"user_id": user_id})

def save_user_data(user_id, user_data):
    collection.update_one({"user_id": user_id}, {"$set": user_data}, upsert=True)
    print("User data saved successfully.")
