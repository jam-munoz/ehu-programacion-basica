with def_datos; use def_datos;

function esta (
      N        : in     Integer;           
      L        : in     Lista_De_Enteros   ) 
  return Boolean is 
   -- Precondicion: 
   -- Postcondicion: el resultado es True si N se encuentra en L y False si no 
   i : Integer;
   es_repetido : Boolean;
begin
   i := 1;
   es_repetido := False;
   while i <= L.Cuantos and not es_repetido loop
      if N = L.Numeros(i) then
         es_repetido := True;
      end if;
      i := i + 1;
   end loop;
   return es_repetido;
end esta;

