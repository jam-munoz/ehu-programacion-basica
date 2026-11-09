with datos2; use datos2;

function es_palindromo_recursivo (Inicio, Fin : in Integer; C : in Cadena) return Boolean is
begin   
   if Inicio > C.Long then
      return True;
   elsif C.Caracteres(Inicio) = ' ' then
      return es_palindromo_recursivo(Inicio + 1, Fin, C);
   elsif C.Caracteres(Fin) = ' ' then
      return es_palindromo_recursivo(Inicio, Fin - 1, C);
   elsif C.Caracteres(Inicio) = C.Caracteres(Fin) then
      return es_palindromo_recursivo(Inicio + 1, Fin - 1, C);
   else
      return False;
   end if;
end es_palindromo_recursivo;