with es_capicua, es_primo;

function primo_y_capicua_mayor(n: in integer) return integer is
	-- pre: n >= 1
	-- post: el resultado es un valor n2 tal que n2 es el primer capicua y primo mayor que n
	num : Integer;
begin
	num := n;
	loop
		num := num + 1;
		while not es_capicua(num) loop
			num := num + 1;
		end loop;
		exit when es_primo(num);
	end loop;
	return num;
end primo_y_capicua_mayor;
