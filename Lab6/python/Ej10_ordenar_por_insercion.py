def escribir_vector(V):
	i = 0
	while i < len(V):
		print(V[i])
		i += 1

def intercambiar(a, b):
	return b, a

def desplazar_una_posicion_a_la_derecha(V,posActual,posComienzo):
	i = len(V) - 1
	temp = V[i]
	while i > 0:
		V[i] = V[i - 1]
		i -= 1
	V[0] = temp
	return V

def ordenar_por_insercion(V):
	i = 1
	while i < len(V):
		key = V[i]
		j = i - 1
		while key < V[j] and j >= 0:
			V[j + 1], V[j] = intercambiar(V[j + 1], V[j])
			j -= 1
		i += 1
	return(V)

#def buscar_posicion_de_insercion(V,posActual,elem):
#	?????
#	return(???)



def principal():
	#Caso 1
	vector1 = [9, 5, 3, 4, 10, 8, 13, 24, 15, 11]

	print("El vector inicial es (9,5,3,4,10,8,13,24,15,11):")
	escribir_vector(vector1)

	vector1=ordenar_por_insercion(vector1)
	print("El vector final deberia ser (3,4,5,8,9,10,11,13,15,24) y es:")
	escribir_vector(vector1)

principal()
