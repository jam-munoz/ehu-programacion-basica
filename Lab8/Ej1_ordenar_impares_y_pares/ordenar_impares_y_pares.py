def escribir_vector(V):
	print(V)

def ordenar_recursivo(v, start, end):
    if start >= end:
        return v
    if v[start] % 2 == 0:
        if v[end] % 2 != 0:
            v[start], v[end] = v[end], v[start]
            return ordenar_recursivo(v, start + 1, end - 1)
        else:
            return ordenar_recursivo(v, start, end - 1)
    else:
        return ordenar_recursivo(v, start + 1, end)         

def ordenar_impares_y_pares(v):
    return ordenar_recursivo(v, 0, len(v) - 1)

def principal():
    #Caso 1 
    vector1 = [10, 3, 13, 4, 6, 3, 5, 2, 9, 7, 8, 18, 12, 2]
    print("El vector inicial es (10,3,13,4,6,3,5,2,9,7,8,18,12,2):")
    escribir_vector(vector1)
    vector1=ordenar_impares_y_pares(vector1)
    print("El vector final deberia ser (3,13,3,5,9,7,   10,4,6,2,8,18,12,2)")
    print(" SIN IMPORTAR EL ORDEN de los pares entre si, ni de los impares entre si")
    print("y segun vuestro programa es:")
    escribir_vector(vector1)
        
principal()
