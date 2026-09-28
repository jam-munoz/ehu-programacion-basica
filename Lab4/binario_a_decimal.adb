with Ada.Integer_Text_IO, Ada.Text_IO;
use Ada.Integer_Text_IO, Ada.Text_IO;
procedure binario_a_decimal is
   -- declaracion de variables
   num, decimal, potencia : Integer;
begin
   --inicializaciones
   put("Introduce un numero binario que comience en 1: ");
   get(num);
   decimal := 0;
   potencia := 1;
   --descomponer el numero binario y crear el decimal
   while(num > 0) loop
      if (num rem 10 = 1) then
        decimal := decimal + potencia;
      end if;
      potencia := potencia * 2;
      num := num / 10;
   end loop;
   put_line("El numero en decimal es:");
   put(decimal);
end binario_a_decimal;
