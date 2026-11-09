with datos2; use datos2;
with es_palindromo_recursivo;

function es_palindromo(C : in Cadena) return Boolean is 
-- pre: la cadena C solamente contiene letras en minuscula y/o espacios en blanco.
-- post: el resultado es true si C contiene un palindromo, y false si no
--       Los espacios en blanco NO se tienen en cuenta a la hora de decidir si la
--       cadena contiene o no un palindromo.
--       La funcion obtiene el resultado mediante una estrategia RECURSIVA.
   Inicio : Integer := 1;
begin
   return es_palindromo_recursivo(Inicio, C);
end es_palindromo;