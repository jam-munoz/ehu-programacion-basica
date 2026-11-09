with datos2; use datos2;

function es_palindromo_recursivo (Inicio : in Integer; C : in Cadena) return Boolean is
begin   
   if Inicio > C.Long then
      return True;
   elsif C.Caracteres(Inicio) = C.Caracteres(C.Long - Inicio + 1) then
      return es_palindromo_recursivo(Inicio + 1, C);
   else
      return False;
   end if;
end es_palindromo_recursivo;