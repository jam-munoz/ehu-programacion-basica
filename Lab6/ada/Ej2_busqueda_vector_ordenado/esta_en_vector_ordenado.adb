with vectores; use vectores;

function esta_en_vector_ordenado(N : Integer; arr : Vector_De_Enteros) return Boolean is
   -- pre: V contiene al menos un elemento (V'Last >= 1)
   --      V esta ordenado ascendentemente:
   --              V(i) <= V(i+1),      1 <= i < V'last
   -- post: el resultado es True si N esta en V y False si no
   --       El algoritmo es eficiente aprovechando que V esta ordenado
	first, mid, last : Integer;
	found : Boolean;
begin
	first := arr'First;
	mid := (arr'First + arr'Last) / 2;
	last := arr'Last;
	found := false;
	while first <= last and not found loop
		if N = arr(mid) then
			found := true;
		elsif N < arr(mid) then
			last := mid - 1;
		elsif N > arr(mid) then
			first := mid + 1;
		end if;
		mid := (first + last) / 2;
	end loop;
	return found;
end esta_en_vector_ordenado;
