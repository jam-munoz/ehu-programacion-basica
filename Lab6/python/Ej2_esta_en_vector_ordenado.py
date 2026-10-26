
def esta_en_vector_ordenado(x,vec):
  

def principal():
   Vector1= [30, 31, 255, 270, 281, 290, 630, 700, 900, 960] 
   print("Prueba 1: el valor esta en medio")
   print(" esta_en_vector_ordenado(290, (30, 31, 255, 270, 281, 290, 630, 700, 900, 960))")
   print(" debe ser True y el resultado es ")
   rdo=esta_en_vector_ordenado(290,Vector1)
   print(rdo)
   print()

   Vector1=  [30, 31, 255, 270, 281, 290, 630, 700, 900, 960]
   print("Prueba 2: el valor esta al final")
   print(" esta_en_vector_ordenado(960, (30, 31, 255, 270, 281, 290, 630, 700, 900, 960))")
   print(" debe ser True y el resultado es ")
   rdo=esta_en_vector_ordenado(960,Vector1)
   print(rdo)
   print()

   Vector1=  [30, 31, 255, 270, 281, 290, 630, 700, 900, 960]
   print("Prueba 3: el valor no esta")
   print(" esta_en_vector_ordenado(45, (30, 31, 255, 270, 281, 290, 630, 700, 900, 960))")
   print(" debe ser False y el resultado es ")
   rdo=esta_en_vector_ordenado(45,Vector1)
   print(rdo)
   print()
    
principal()
