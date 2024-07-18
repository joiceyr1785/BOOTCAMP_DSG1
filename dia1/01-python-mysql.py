import mysql.connector

connection = mysql.connector.connect(user='root', password='root', host='localhost', database='db_codigo')

print('Estas conectado a la base de datos')

connection.close()
