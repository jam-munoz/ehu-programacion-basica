with matrices; use matrices;

procedure calcular_maximo(arr : Matriz_De_Enteros; max, Pos_F, Pos_C : in out Integer) is
   -- pre: La matriz M contiene al menos un elemento
   -- post: Max contiene el valor maximo de la matriz
   --       y Pos_F, Pos_C su posicion (fila, columna).
   --       Si el maximo aparece varias veces contendran la posicion de la primera aparicion
	i, j: Integer;
begin
	i := arr'First(1);
	max := arr(arr'First(1), arr'First(2));
	Pos_F := arr'First(1);
	Pos_C := arr'First(2);
	while i <= arr'Last(1) loop
		j := arr'First(2);
		while j <= arr'Last(2) loop
			if arr(i, j) > max then
				max := arr(i, j);
				Pos_F := i;
				Pos_C := j;
			end if;
			j := j + 1;
		end loop;
		i := i + 1;
	end loop;
end calcular_maximo;
