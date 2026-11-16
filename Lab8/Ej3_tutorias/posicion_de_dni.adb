with datos;
use datos;

function posicion_de_dni (Lista: in Lista_tutorias_alumnos; DNI: in Positive) return Integer is
   -- Pre: Lista no contiene numeros de DNI repetidos
   -- Post: Devuelve la posicion de Lista en la que se encuentra el DNI
   --       Si el DNI no se encuentra en Lista, se devuelve el valor -1
   i : Integer := 1;
   index: Integer := -1;
   encontrado : Boolean := False;
begin
   while not encontrado and then i <= Lista.Cuantas loop
      if Lista.Tutorias(i).DNI = DNI:
         index := i;
         encontrado := True;
      end if;
      i := i + 1;
   end loop;
   return index;
end posicion_de_dni;