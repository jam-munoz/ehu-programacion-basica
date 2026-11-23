def escribir_vector(V):
# Pre:  len(V) >= 0    
# Post: se muestran por pantalla todos los elementos de V
    for items in V:
        print(items)
    print("")

def merge(arr, l, m, r):
    n1 = m - l + 1
    n2 = r - m

    L = [0] * n1
    R = [0] * n2

    for i in range(n1):
        L[i] = arr[l + i]
    for j in range(n2):
        R[j] = arr[m + 1 + j]

    i = 0
    j = 0
    k = l

    while i < n1 and j < n2:
        if L[i] <= R[j]:
            arr[k] = L[i]
            i += 1
        else:
            arr[k] = R[j]
            j += 1
        k += 1

    while i < n1:
        arr[k] = L[i]
        i += 1
        k += 1
    while j < n2:
        arr[k] = R[j]
        j += 1
        k += 1

def merge_sort(arr, l, r):
    if l < r:
        m = l + (r - l) // 2
        merge_sort(arr, l, m)
        merge_sort(arr, m + 1, r)
        merge(arr, l, m, r)

def ordenar(V):
# Pre:  len(V) >= 0    
# Post: se devuelve V con sus elementos ordenados de mayor a menor
    merge_sort(V, 0, len(V) - 1)
    return V

def principal():
    
    V = [12, 11, 13, 5, 6, 7] # Vector que se va a ordenar
    
    print("ANTES DE ORDENAR:")
    escribir_vector(V)
      
    V = ordenar(V)
    
    print("DESPUES DE ORDENAR:")
    escribir_vector(V)
    
principal()