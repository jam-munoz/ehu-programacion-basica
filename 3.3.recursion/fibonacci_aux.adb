with Ada.Text_IO,Ada.Integer_Text_IO;
use Ada.Text_IO,Ada.Integer_Text_IO;
with fibonacci_main;

procedure fibonacci_aux(n, total : Integer) is
	res : Integer;
begin
	if n /= 0 then
		put(fibonacci_main(total - n), width => 1);
		put(" ");
		fibonacci_aux(n - 1, total);
	end if;
end fibonacci_aux;
