def decimal_a_hexadecimal(n):
	hex_digits = "0123456789abcdef"
	if n >= 16:
		decimal_a_hexadecimal(n >> 4)
	print(hex_digits[n & 0xF], end='')

def prueba():
	print("El numero 0 deberia ser 0 y es: ", end='')
	decimal_a_hexadecimal(0)
	print()
	print("El numero 1 deberia ser 1 y es: ", end='')
	decimal_a_hexadecimal(1)
	print()
	print("El numero 10 deberia ser a y es: ", end='')
	decimal_a_hexadecimal(10)
	print()
	print("El numero 100 deberia ser 64 y es: ", end='')
	decimal_a_hexadecimal(100)
	print()
	print("El numero 1000 deberia ser 3e8 y es: ", end='')
	decimal_a_hexadecimal(1000)
	print()
	print("El numero 100000 deberia ser 186a0 y es: ", end='')
	decimal_a_hexadecimal(100000)
	print()

prueba()
