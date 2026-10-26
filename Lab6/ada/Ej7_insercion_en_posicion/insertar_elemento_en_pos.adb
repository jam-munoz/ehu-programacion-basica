with vectores, rotar_derecha_insertar; use vectores;

procedure insertar_elemento_en_pos(num, pos : Integer; lst : in out Lista_Enteros) is
   -- pre: la posicion de insercion sera menor o igual
   --      que el numero de elementos que contenga la lista +1
   -- post: el elemento quedara insertado en la posicion de insercion
   --       y el resto de los elementos quedaran desplazados hacia la derecha
   i : Integer;
begin
	if pos > lst.Cont then
		lst.cont := lst.cont + 1;
		lst.Numeros(lst.cont) := num;
	else
		lst.cont := lst.cont + 1;
		rotar_derecha_insertar(num, pos, lst.Numeros);
	end if;
end insertar_elemento_en_pos;
