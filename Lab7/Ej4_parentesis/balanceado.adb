with datos; use datos;

function balanceado (C : in Cadena) return Boolean is 
-- pre: C contiene un linea de un programa, que puede contener 
--               parentesis y llaves
--      Ej:         si (a > b) { b := a+n ) ; x+y }
-- post: el resultado es true si C esta balanceada y false si no

   C_aux : Cadena;  
   salir : Boolean := False;
   i : Integer;
begin
   i := 1;
   C_aux.Long := 0;
   while i <= C.Long and not salir loop
      if C.Caracteres(i) = '{' or C.Caracteres(i) = '(' then
         C_aux.Long := C_aux.Long + 1;
         C_aux.Caracteres(C_aux.Long) := C.Caracteres(i);
      elsif C.Caracteres(i) = '}' then
         if C_aux.Long > 0 and then C_aux.Caracteres(C_aux.Long) = '{' then
            C_aux.Long := C_aux.Long - 1;
         else
            salir := True;
         end if;
      elsif C.Caracteres(i) = ')' then
         if C_aux.Long > 0 and then C_aux.Caracteres(C_aux.Long) = '(' then
            C_aux.Long := C_aux.Long - 1;
         else
            salir := True;
         end if;
      end if;
      i := i + 1;
   end loop;
   return not salir;
end balanceado;
