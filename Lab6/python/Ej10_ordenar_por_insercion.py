def escribir_vector(V):
	?????

def desplazar_una_posicion_a_la_derecha(V,posActual,posComienzo):
	?????

    return(V);

def ordenar_por_insercion(V):
    ??????
    ?????
    return(V)

def buscar_posicion_de_insercion(V,posActual,elem):
    ?????
        
    return(???)



def principal():
     #Caso 1 
     vector1 = [9, 5, 3, 4, 10, 8, 13, 24, 15, 11]
     
     print("El vector inicial es (9,5,3,4,10,8,13,24,15,11):")
     escribir_vector(vector1)

     vector1=ordenar_por_insercion(vector1)
     print("El vector final deberia ser (3,4,5,8,9,10,11,13,15,24) y es:")
     escribir_vector(vector1)

principal()
