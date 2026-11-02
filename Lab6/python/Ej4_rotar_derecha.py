def escribir_vector(V):
#Entrada: un array de enteros
#Pre:-
#Salida: se muestra por pantalla los elementos del array
#Post:
	i = 0
	while i < len(V):
		print(V[i])
		i += 1

def rotar_derecha(V):
#Entrada: un array de enteros
#Pre:-
#Salida: un array de enteros
#Post: el array de salida tiene los elementos del array de entrada desplazados
#una posicion a la derecha
	i = len(V) - 1
	temp = V[i]
	while i > 0:
		V[i] = V[i - 1]
		i -= 1
	V[0] = temp
	return V

def principal():
	#inicializar
	vector1=[1,2,3,4,5,6,7,8,9,10]

	print("un vector de diez elementos: \n [1,2,3,4,5,6,7,8,9,10]")
	print(" Los elementos del vector inicial son: ")
	escribir_vector(vector1)

	print(" al rotar los elementos el resultado es:\n  ")
	vector1=rotar_derecha(vector1)
	escribir_vector(vector1)

principal()
