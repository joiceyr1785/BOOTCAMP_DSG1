import mysql.connector

class DAO:

    def __init__(self) :
        self.db = mysql.connector.connect(
            host='localhost',
            user= 'root',
            password='root',
            database = 'dbo_codigo'
        )

        self.cursor = self.db.cursor()