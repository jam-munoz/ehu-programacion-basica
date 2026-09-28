def binario_a_decimal():
    #inicializaciones
    num=int(input("Introduce un numero binario que comience en 1"))
    dec=0
    pot=1

    #descomponer el numero binario y crear el decimal
    while(num > 0):
        if num & 1:
            dec += pot
        pot *= 2
        num //= 10
    print("el numero en decimal es: ",  dec)

#llamada al subprograma
binario_a_decimal()
