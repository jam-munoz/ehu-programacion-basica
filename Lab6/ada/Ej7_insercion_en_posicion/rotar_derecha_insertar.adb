with vectores; use vectores;

procedure rotar_derecha_insertar(num, pos : Integer; arr : in out Vector_De_Enteros) is
   -- pre: El array esta lleno de informacion relevante
   -- post: se desplazaran todos los elementos hacia la derecha y el ultimo elemento
	--       pasara a ser el primero
	i : Integer;
begin
	i := arr'Last;
	while (i > pos) loop
		arr(i) := arr(i - 1);
		i := i - 1;
	end loop;
	arr(pos) := num;
end rotar_derecha_insertar;
