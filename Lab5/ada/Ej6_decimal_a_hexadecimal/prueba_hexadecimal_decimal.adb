with Ada.Text_IO,Ada.Integer_Text_IO,Ada.Float_Text_IO;
use Ada.Text_IO,Ada.Integer_Text_IO,Ada.Float_Text_IO;
with decimal_a_hexadecimal;

procedure prueba_hexadeximal_decimal is

begin
   Put("El numero 1000 deberia 3e8 y es: ");
   decimal_a_hexadecimal(1000);
end prueba_hexadeximal_decimal;