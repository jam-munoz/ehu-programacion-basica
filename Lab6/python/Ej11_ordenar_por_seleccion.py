def escribir_vector(V):
	??????????    

def intercambiar(V,posA,posB):
	??????????
	
	return(V)

def buscar_posicion_del_minimo(V,posComienzo):
#Pre:	  0 <= posComienzo < len(V)
#Post:  pos_min contiene la posicion del valor minimo de los
#       comprendidos entre posComienzo y len(V)
        ?????

	return(???)

def ordenar_por_seleccion(V):
    ????
    
    return(V)

def principal():
     #Caso 1 
     vector1 = [9, 5, 3, 4, 10, 8, 13, 24, 15, 11]
     
     print("El vector inicial es (9,5,3,4,10,8,13,24,15,11):")
     escribir_vector(vector1)

     vector1=ordenar_por_seleccion(vector1)
     print("El vector final deberia ser (3,4,5,8,9,10,11,13,15,24) y es:")
     escribir_vector(vector1)
        
principal()
