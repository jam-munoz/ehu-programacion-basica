def escribir_lista(L) -> None:
    print("[ ", end="")
    for i in range(0,len(L)):
        print(str(L[i]) + " ", end="")        
    print("]", end="")
    
def calcular_amplitud_max (L: list[int]) -> int:
	# Pre: Lista tiene al menos dos elementos y comienza con una
	#      subsecuencia ascendente
	#      La lista no tiene dos elementos iguales consecutivos
	# Post: Devuelve la longitud del segmento de mayor amplitud
	#       En caso de que no haya ningun segmento el resultado sera cero
	longitud_max = 0
	longitud_actual = 1
	i = 1
	end = len(L) - 1
	while i < end:
		while i < end and L[i] < L[i + 1]:
			longitud_actual += 1
			i += 1
		while i < end and L[i] > L[i + 1]:
			longitud_actual += 1
			i += 1
		if longitud_actual > longitud_max:
			longitud_max = longitud_actual
		longitud_actual = 1
	return longitud_max

def prueba_calcular_amplitud_max(): 
   # Este programa hace llamadas a la funcion calcular_amplitud_max y  
   # permite comprobar si su funcionamiento es correcto
	L = [12, 16]
	print("Prueba 1: Solo ascendente, dos elementos")
	print("La entrada es ", end="")
	escribir_lista(L)
	print(". El resultado deberia ser 0 y es: ")
	print(calcular_amplitud_max(L))
	print()

	L = [1, 3, 4, 6, 5, 4, 3, 4, 5, 6, 7, 8, 9, 7, 3, 1, 4, 5, 7, 9]
	print("Prueba 2: 19 elementos")
	print("La entrada es ", end="")
	escribir_lista(L)
	print(". El resultado deberia ser 10 y es: ")
	print(calcular_amplitud_max(L))
	print()

prueba_calcular_amplitud_max()
