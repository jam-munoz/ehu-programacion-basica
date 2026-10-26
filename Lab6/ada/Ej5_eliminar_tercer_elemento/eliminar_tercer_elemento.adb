with vectores; use vectores;

procedure eliminar_tercer_elemento(lst : in out Lista_Enteros) is
   -- pre: los elementos de la lista no tienen por que estar ordenados
   -- post: si hay tres o mas elementos, el tercer elemento quedara eliminado
   --       y la lista no tiene por que mantener ningun orden particular (ni con
   --       respecto al orden que tenia inicialmente)
   i : Integer;
begin
	i := 3;
	if lst.cont = 3 then
		lst.Numeros(3) := 0;
		lst.cont := lst.cont - 1;
	elsif lst.cont > 3 then
		while i < lst.Cont loop
			lst.Numeros(i) := lst.Numeros(i + 1);
			i := i + 1;
		end loop;
		lst.Numeros(i) := 0;
		lst.cont := lst.cont - 1;
	end if;
end eliminar_tercer_elemento;
