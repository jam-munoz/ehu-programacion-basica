def contar_digitos_impares():
    #inicializaciones
    num=int(input("Introduce un numero natural"))
    cont=0

    #descomponer el numero y contar sus digitos impares
    while(num > 0):

        if num % 2:
            cont += 1
        num //= 10

    print("el numero contiene", cont, "digitos impares.")

#llamada al subprograma
contar_digitos_impares()
