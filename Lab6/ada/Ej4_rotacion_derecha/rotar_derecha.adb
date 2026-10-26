with vectores; use vectores;

procedure rotar_derecha(arr : in out Vector_De_Enteros) is
   -- pre: El array esta lleno de informacion relevante
   -- post: se desplazaran todos los elementos hacia la derecha y el ultimo elemento
	--       pasara a ser el primero
	temp, i : Integer;
begin
	temp := arr(arr'Last);
	i := arr'Last;
	while (i > arr'First) loop
		arr(i) := arr(i - 1);
		i := i - 1;
	end loop;
	arr(arr'First) := temp;
end rotar_derecha;
