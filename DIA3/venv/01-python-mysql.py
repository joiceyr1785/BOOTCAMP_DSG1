import mysql.connector

connection = mysql.connector.connect(user='root', password='root', host='localhost', database='dbo_codigo')

print("Estas conectado a la base de datos")

alumnos_cursor = connection.cursor()

alumnos_cursor.execute("select * from tbl_alumno")

resultado = alumnos_cursor.fetchall()
print(resultado)
for registro in resultado:
    print('*'*50)
    print(f'Nombre : {registro[1]}')
    print(f'EMAIL: {registro[2]}')

connection.close()

