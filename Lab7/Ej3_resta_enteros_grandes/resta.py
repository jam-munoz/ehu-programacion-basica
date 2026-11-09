def escribir_entero_grande(E):
#Este subprograma escribira por pantalla los digitos almacenados en E
# de izda a drcha y sin mostrar los ceros a la izda
# Ej.	 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
#		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
#		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
#		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
#		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
#		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
#		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
#		 0, 0, 0, 9, 9, 9, 9, 9, 9, 9,
#		 9, 9, 9, 9, 9, 9, 9, 9, 9, 9,
#		 9, 9, 9, 9, 9, 9, 9, 9, 9, 9
# Deberia de imprimir 999999999999999999999999999
	i = 0
	while i < len(E):
		while i < len(E) - 1 and E[i] == 0:
		   i += 1
		print(E[i], end='')
		i += 1
	print('')

def mayor(E1: list[int], E2: list[int]) -> bool:
# Pre: E1 y E2 son mayores o iguales que cero
#	  len(E1) = len(E2)
# Post: el resultado es true si E1 > E2 y False si no
# NOTA: Aunque python permite comparar directamente dos vectores, para este
#	   ejercicio se pide expresamente que el resultado se calcule comparando
#	   DIGITO A DIGITO los valores representados por E1 y E2
	i = 0
	while (E1[i] == E2[i] and i < len(E1)):
		i += 1
	if E1[i] > E2[i]:
		return True
	return False
   
def resta(E1,E2) -> list[int]:
#Pre: E1 y E2 tienen ceros en las cifras no ocupadas más significativas 
#													(más a la izquierda)
#	  E1 y E2 son mayores o iguales que cero
#	  len(E1) = len(E2)
#Post: si E2 > E1 entonces el resultado es cero
#	  si no el resultado es la resta de los dos valores de entrada, E1 - E2
#	  Los parámetros de entrada E1 y E2 no se han modificado
	rdo = [0]*len(E1)
	if not mayor(E1, E2):
		return [0]
	fin = 0
	while fin < len(E1) - 1 and E1[fin] == 0:
		   fin += 1
	i = len(E1) - 1
	carry = 0
	while i >= fin:
		rdo[i] = E1[i] - E2[i] + carry
		if rdo[i] < 0:
			carry = -1
			rdo[i] = 10 + rdo[i]
		else:
			carry = 0
		i -= 1
	return rdo

def prueba():
	N1= (0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 8, 8, 8, 1, 2, 3, 5, 5, 5)
	N2= (0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 4, 4, 4, 1, 2, 3, 5, 5, 5)
	print("Primera prueba.")
	print("==============")
	escribir_entero_grande(N1)
	print(" menos ")
	escribir_entero_grande(N2)
	print("\n")
	print("El resultado debe ser 444000000 y es: ")
	escribir_entero_grande(resta(N1, N2))



	N1= (0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 9, 9, 9, 9, 9, 9, 9,
		 9, 9, 9, 9, 9, 9, 9, 9, 9, 9,
		 9, 9, 9, 9, 9, 9, 9, 9, 9, 9)
	N2= (0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)
	print("Segunda prueba.")
	print("==============")
	escribir_entero_grande(N1)
	print(" menos ")
	escribir_entero_grande(N2)
	print("\n")
	print("El resultado debe ser 999999999999999999999999998 y es: ")
	escribir_entero_grande(resta(N1, N2))

	N1= (0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 9, 9, 9, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
	N2= (0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)
	print("Tercera prueba.")
	print("==============")
	escribir_entero_grande(N1)
	print(" menos ")
	escribir_entero_grande(N2)
	print("\n")
	print("El resultado debe ser 99899999999999999999999999999 y es: ")
	escribir_entero_grande(resta(N1, N2))

	N1= (0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 9, 9, 9, 0, 0, 0, 0, 0, 0,
		 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
		 2, 2, 2, 2, 2, 2, 2, 2, 2, 2)
	N2= (0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
		 7, 7, 7, 7, 7, 7, 7, 7, 7, 7)
	print("Cuarta prueba prueba.")
	print("==============")
	escribir_entero_grande(N1)
	print(" menos ")
	escribir_entero_grande(N2)
	print("\n")
	print("El resultado debe ser 99899999944444444444444444445 y es: ")
	escribir_entero_grande(resta(N1, N2))

	N1= (0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
		 7, 7, 7, 7, 7, 7, 7, 7, 7, 7)
	N2= (0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 9, 9, 9, 0, 0, 0, 0, 0, 0,
		 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
		 2, 2, 2, 2, 2, 2, 2, 2, 2, 2)
	print("Quinta prueba prueba.")
	print("==============")
	escribir_entero_grande(N1)
	print(" menos ")
	escribir_entero_grande(N2)
	print("\n")
	print("El resultado debe ser 0 (dado que N2 > N1 y es: ")
	escribir_entero_grande(resta(N1, N2))
	N1= (0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
	N2= (0, 0, 0, 0, 0, 0, 1, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)

	print("Sexta prueba.")
	print("==============")
	escribir_entero_grande(N1)
	print(" menos ")
	escribir_entero_grande(N2)
	print("\n")
	print("El resultado debe ser 0 (dado que N2 > N1 y es: ")
	escribir_entero_grande(resta(N1, N2))

	N1= (0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)
	N2= (0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 2)
	print("Septima prueba.")
	print("==============")
	escribir_entero_grande(N1)
	print(" menos ")
	escribir_entero_grande(N2)
	print("\n")
	print("El resultado debe ser 0 (dado que N2 > N1 y es: ")
	escribir_entero_grande(resta(N1, N2))

	N1= (0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)
	N2= (0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		 7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
		 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
	print("Octava prueba.")
	print("==============")
	escribir_entero_grande(N1)
	print(" menos ")
	escribir_entero_grande(N2)
	print("\n")
	print("El resultado debe ser 1 y es: ")
	escribir_entero_grande(resta(N1, N2))


#llamada al programa principal
prueba()
