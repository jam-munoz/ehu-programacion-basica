with Ada.Text_Io, Ada.Integer_Text_Io; use Ada.Text_Io, Ada.Integer_Text_Io;
with vectores; use vectores;

procedure escribir_vector (V : in Vector_De_Enteros) is
   --Pre:
   --Post:  se han escrito en pantalla todos los valores de V
	i : Integer;
begin
	i := V'First;
	while i < V'Last loop
		put(V(i), width => 3);
		i := i + 1;
   end loop;
   new_line;
end escribir_vector;

