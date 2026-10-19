with Ada.Text_IO,Ada.Integer_Text_IO;
use Ada.Text_IO,Ada.Integer_Text_IO;
with gcd, fibonacci, fibonacci_aux, es_polarizado;

procedure Main is
begin
	put("El numero debería ser 12 y es: ");
	put(gcd(36, 60), width => 1);
	New_Line;
	put("La serie debería ser 0 1 1 2 3 5 8 13 21 34 55 89 y es: ");
	fibonacci(12);
	put("La funcion debería devolver verdadero y es: ");
	put(es_polarizado(24));
end Main;
