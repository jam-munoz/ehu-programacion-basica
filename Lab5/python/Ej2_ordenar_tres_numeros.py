def intercambiar (a, b):
	return b, a

def ordenar_dos_numeros (a, b):
	if a < b:
		a, b = intercambiar(a, b)
	return a, b

def ordenar_tres_numeros (a, b, c):
	a, b = ordenar_dos_numeros(a, b)
	b, c = ordenar_dos_numeros(b, c)
	a, b = ordenar_dos_numeros(a, b)
	return a, b, c

def prueba():
	#totalmente desordenados
	# 2, 5, 7
	n1=2
	n2=5
	n3=7
	n1,n2,n3=ordenar_tres_numeros(n1,n2,n3)
	print("2,5,7 Tu programa deberia escribir 7 5 2 y escribe: %d %d %d" %(n1,n2,n3));

  	# 2, 7, 5
	n1=2
	n2=7
	n3=5
	n1,n2,n3=ordenar_tres_numeros(n1,n2,n3)
	print("2,7,5 Tu programa deberia escribir 7 5 2 y escribe: %d %d %d" %(n1,n2,n3));

	# 7, 2, 5
	n1=7
	n2=2
	n3=5
	n1,n2,n3=ordenar_tres_numeros(n1,n2,n3)
	print ("7,2,5 Tu programa deberia escribir 7 5 2 y escribe: %d %d %d" %(n1,n2,n3));

	# 7, 5, 2
	n1=7
	n2=5
	n3=2
	n1,n2,n3=ordenar_tres_numeros(n1,n2,n3)
	print("7,5,2 Tu programa deberia escribir 7 5 2 y escribe: %d %d %d" %(n1,n2,n3));

prueba()
