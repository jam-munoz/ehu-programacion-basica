with datos;
use datos;

procedure eliminar_repetidos (Un_dia: in out Info_dia) is
   -- Pre:
   -- Post: Se han eliminado las apariciones repetidas de DNI en Un_dia (es decir, que si
   --       un mismo DNI se encontraba mas de una vez en Un_dia, ahora solamente aparece una vez)
   --       El orden en el que queden los DNIs una vez eliminados los repetidos no es relevante, lo 
   --       que significa que, por eficiencia, puede no mantenerse el orden original de los DNIs
   i : Integer := 2;
   j : Integer;
   repetido : Boolean;
begin
   while i <= Un_dia.Cuantos_alumn loop
      j := 1;
      repetido := False;
      while not repetido and j <= i loop
         if Un_dia.DNIs(j) = Un_dia.DNIs(i) then
            Un_dia.DNIs(i) := Un_dia.DNIs(Un_dia.Cuantos_alumn);
            Un_dia.Cuantos_alumn := Un_dia.Cuantos_alumn - 1;
            repetido := True;
         end if;
         j := j + 1;
      end loop;
      if not repetido then
         i := i + 1
      end if;
   end loop;
end eliminar_repetidos;
