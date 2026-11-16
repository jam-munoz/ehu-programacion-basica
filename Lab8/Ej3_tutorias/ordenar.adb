with intercambiar;
with datos;
use datos;

procedure ordenar(Lista: in out Lista_tutorias_alumnos) is
   -- Pre:
   -- Post: Lista esta ordenada de mayor a menor numero total de asistencias a tutorias
   i : Integer := 2;
   j : Integer := 1;
   key, temp : Integer;
begin
   while i <= Lista.Cuantos loop
      key = Lista.Tutorias(i).Tutorias_Totales
      while j > 0 and then key > Lista.Tutorias(j).Tutorias_Totales loop
         intercambiar(Lista.Tutorias(j + 1), Lista.Tutorias(j));
         j := j - 1;
      end loop;
      j := i;
      i := i + 1;
end ordenar;