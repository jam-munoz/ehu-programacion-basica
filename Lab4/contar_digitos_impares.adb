with Ada.Integer_Text_IO, Ada.Text_IO;
use Ada.Integer_Text_IO, Ada.Text_IO;
procedure contar_digitos_impares is
   -- declaracion de variables
   num, contador : Integer;
begin
   --inicializaciones
   put("Introduce un numero natural: ");
   get(num);
   contador := 0;
   if (num < 0) then
      num := -num;
   end if;
   --descomponer el numero en digitos
   while(num > 0) loop
      
      if(num rem 2 /= 0) then
        contador := contador + 1;
	      --contar el digito actual solo si es impar
	  end if;
      num := num / 10;
   end loop;
   put_line("El numero contiene ");
   put(contador);
   put(" digitos impares.");
end contar_digitos_impares;
