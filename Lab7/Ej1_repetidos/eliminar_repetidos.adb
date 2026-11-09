with def_datos; use def_datos;
with esta;

procedure eliminar_repetidos (
      Lista_Original     : in   Lista_De_Enteros; 
      Lista_Resultado    : out 	Lista_De_Enteros  ) is 
   -- Precondicion: 
   -- Postcondicion: Lista_Resultado contiene los elementos de Lista_Original pero sin repetidos
   i : Integer;
begin
   i := 1;
   Lista_Resultado.Cuantos := 0;
   while i <= Lista_Original.cuantos loop
      if not esta(Lista_Original.numeros(i), Lista_Resultado) then
         Lista_Resultado.numeros(Lista_Resultado.Cuantos + 1) := Lista_Original.numeros(i);
         Lista_Resultado.Cuantos := Lista_Resultado.Cuantos + 1;
      end if;
      i := i + 1;
   end loop;
end eliminar_repetidos;

