import mysql.connector
from mysql.connector import errorcode

def create_database():
    try:
        conn = mysql.connector.connect(
            host="localhost",
            user="root",
            password="Bami@2012"
        )
        cursor = conn.cursor()
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")

    except mysql.connector.Error as err:
        print(f"Error: {err}")

    finally:
        if cursor:
            cursor.close()
        if conn:
            conn.close()

if __name__ == "__main__":
    create_database()
