with Ada.Text_IO,Ada.Integer_Text_IO,Ada.Float_Text_IO;
use Ada.Text_IO,Ada.Integer_Text_IO,Ada.Float_Text_IO;
with decimal_a_hexadecimal;

procedure prueba_hexadecimal_decimal is

begin
	Put("El numero 0 deberia ser 0 y es: ");
	decimal_a_hexadecimal(0);
	New_Line;
	Put("El numero 1 deberia ser 1 y es: ");
	decimal_a_hexadecimal(1);
	New_Line;
	Put("El numero 10 deberia ser a y es: ");
	decimal_a_hexadecimal(10);
	New_Line;
	Put("El numero 100 deberia ser 64 y es: ");
	decimal_a_hexadecimal(100);
	New_Line;
	Put("El numero 1000 deberia ser 3e8 y es: ");
	decimal_a_hexadecimal(1000);
	New_Line;
	Put("El numero 100000 deberia ser 186a0 y es: ");
	decimal_a_hexadecimal(100000);
	New_Line;
end prueba_hexadecimal_decimal;
