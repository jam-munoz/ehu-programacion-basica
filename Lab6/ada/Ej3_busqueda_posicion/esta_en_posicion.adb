with vectores; use vectores;

function esta_en_posicion(N : Integer; arr : Vector_De_Enteros) return Integer is
   -- pre: V contiene al menos un elemento (V'Last >= 1)
   -- los elementos no siguen ningun orden. el elemento que se busca no tiene por que estar en el vector V
   -- post: devolvera la posicion en la que se encuentre el elemento, y si no estuviese devolvera -1
	i : Integer;
	found : Boolean;
begin
	i := arr'First;
	found := false;
	while (i <= arr'Last and not found) loop
		if arr(i) = N then
			found := true;
		else
			i := i + 1;
		end if;
	end loop;
	if not found then
		i := -1;
	end if;
	return i;
end esta_en_posicion;
