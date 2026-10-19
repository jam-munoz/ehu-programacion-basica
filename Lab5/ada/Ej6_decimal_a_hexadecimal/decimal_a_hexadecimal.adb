with Ada.Text_IO,Ada.Integer_Text_IO,Ada.Float_Text_IO;
use Ada.Text_IO,Ada.Integer_Text_IO,Ada.Float_Text_IO;
procedure decimal_a_hexadecimal(decimal : Integer) is
digito : Integer;
begin
   if decimal = 0 then
      return;
   end if;
   decimal_a_hexadecimal(decimal / 16);
   digito := decimal rem 16;
   if digito <= 10 then
      put(digito);
   elsif digito = 10 then
      put('a');
   elsif digito = 11 then
      put('b');
   elsif digito = 12 then
      put('c');
   elsif digito = 13 then
      put('d');
   elsif digito = 14 then
      put('e');
   else
	   put('f');
   end if;
end decimal_a_hexadecimal;
