def suma_binaria(num1, num2):
	suma = 0
	peso = 1
	llevada = 0
	while num1 or num2 or llevada:
		if ((num1 & 1) + (num2 & 1) + llevada) & 1:
			suma += 1 * peso
		if ((num1 & 1) + (num2 & 1) + llevada) > 1:
			llevada = 1
		else:
			llevada = 0
		num1 //= 10
		num2 //= 10
		peso *= 10
	return(suma)

def prueba():
	binario1=0
	binario2=0
	resultado=suma_binaria(binario1,binario2)
	print("0 + 0 en binario es 0 y segun tu programa es %d." %resultado)

	binario1=0
	binario2=1
	resultado=suma_binaria(binario1,binario2)
	print("0 + 1 en binario es 1 y segun tu programa es %d." %resultado)

	binario1=1
	binario2=0
	resultado=suma_binaria(binario1,binario2)
	print("1 + 0 en binario es 1 y segun tu programa es %d." %resultado)

	binario1=1
	binario2=1
	resultado=suma_binaria(binario1,binario2)
	print("1 + 1 en binario es 10 y segun tu programa es %d." %resultado)

	binario1=11
	binario2=11
	resultado=suma_binaria(binario1,binario2)
	print("11 + 11 en binario es 110 y segun tu programa es %d." %resultado)

prueba()
