


#TODO: cuando la base de datos esté hecha, necesitamos traer las preferiencias del cliente y calcular el score de cada ruta según sus preferencias.
#  Por ejemplo, si el cliente prefiere comodidad sobre precio, entonces la ruta con mayor comodidad tendrá un score más alto aunque sea más cara. 
# Esto se puede hacer ponderando los atributos de cada ruta según las preferencias del cliente y
#  sumando esos valores para obtener un score final.

#He pensado normalizar todos los atributos de cada ruta (precio, comodidad, tiempo de viaje) a un rango de 0 a 1 y
#  luego multiplicarlos por un peso que represente la importancia de cada atributo para el cliente.
# dijimos que este iba a ser un weight (peso) que va del 0 (minimo) al 5 (maximo)

# Sería algo así como:
# sumamos los pesos ejemplo , si el usuario pone 5 a comodidad, 3 a precio y 2 a tiempo de viaje, entonces el peso total es 10.
# Luego normalizamos cada atributo de cada ruta a un rango de 0 a 1,
# esto se hace así  5+3+2 = 10 , 5/10 = 0.5, 3/10 = 0.3, 2/10 = 0.2

# ahora 