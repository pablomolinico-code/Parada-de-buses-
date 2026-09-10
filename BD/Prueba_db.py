#Es para poder importar las distintas clases y funciones que usaremos para poder comunicarnos
#Con la BD que usemos para nuestro proyecto
#Teneis que instalaros evidentemente MySQL (Si quereis, si no luego lo hablamos)
#y instalar una cosilla para que funcione
#python -m pip install mysql-connector-python
import mysql.connector 

#Codigo basico para conectar a la BD
conexion = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "",
    #En los huecos en blancos pon lo que tu veas o como tengas escrito los nombre
    database = ""
)

#Para comprobar si esque la conexion funcion

if conexion.is_connected():
    print ("Conexion lograda con MySQL")
    conexion.close()
else:
    print("Has cometido un error en alguno de las partes, haztelo mirar imbecil")