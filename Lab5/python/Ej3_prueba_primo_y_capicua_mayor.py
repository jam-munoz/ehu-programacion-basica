def es_capicua(num):
	n = num
	reves = 0
	while n > 0:
		reves = reves * 10 + n % 10
		n //= 10
	return (num == reves)

def es_primo(num):
	primo = True
	i = 5
	if num < 2:
		primo = False
	elif num < 4:
		i = num
	elif num % 2 == 0 or num % 3 == 0:
		primo = False
	while i * i <= num or primo:
		if num % i == 0 or num % (i + 2) == 0:
			primo = False
		i += 6
	return primo

def primo_y_capicua_mayor(num):
	while not es_primo(num):
		num += 1
		while not es_capicua(num):
			num += 1
	return num


def prueba():
	#prueba 1
	print('El valor de entrada es 1, tu programa debe devolver 2.')
	resultado=primo_y_capicua_mayor(1)
	print('Y devuelve %d.' %resultado)
	print('')
	#prueba 2
	print('El valor de entrada es 7, tu programa debe devolver 11.')
	resultado=primo_y_capicua_mayor(7)
	print('Y devuelve %d.' %resultado)
	print('')
	#prueba 3
	print('El valor de entrada es 32, tu programa debe devolver 101.')
	resultado=primo_y_capicua_mayor(32)
	print('Y devuelve %d.' %resultado)
	print('')
	#prueba 4
	print('El valor de entrada es 453, tu programa debe devolver 727.')
	resultado=primo_y_capicua_mayor(453)
	print('Y devuelve %d.' %resultado)
	print('')
	 #prueba 5
	print('El valor de entrada es 3000000, tu programa debe devolver 3001003.')
	resultado=primo_y_capicua_mayor(3000000)
	print('Y devuelve %d.' %resultado)
	print('')

#Falta hacer la llamada al programa de pruebas
prueba()