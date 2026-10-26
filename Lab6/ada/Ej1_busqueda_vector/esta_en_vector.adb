with vectores;
use vectores;

function esta_en_vector(N : Integer; V : Vector_De_Enteros) return Boolean is
   -- pre: el vector V contiene al menos un elemento (V'Last >= 1)
   -- los elementos no siguen ningun orden
   -- post: el resultado es True si el valor N esta en V y False si no
	i : Integer;
	found : Boolean;
begin
	i := V'First;
	found := false;
	while (i <= V'Last and not found) loop
		if V(i) = N then
			found := true;
		end if;
		i := i + 1;
	end loop;
	return found;
end esta_en_vector;
