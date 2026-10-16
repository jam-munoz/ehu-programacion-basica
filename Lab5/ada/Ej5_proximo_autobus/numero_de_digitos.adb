function numero_de_digitos(codigo : Integer) return Integer is
	--- Entrada: Un codigo de autobus (Integer)
	--- Pre: el codigo de autobus es >=0
	--- Salida: un valor Integer
	--- Post: se devuelve el numero de digitos del codigo de autobus
	digitos : Integer;
begin
	if codigo < 10 then
		digitos := 1;
	elsif codigo < 100 then
		digitos := 2;
	elsif codigo < 1000 then
		digitos := 3;
	elsif codigo < 10000 then
		digitos := 4;
	elsif codigo < 100000 then
		digitos := 5;
	elsif codigo < 1000000 then
		digitos := 6;
	elsif codigo < 10000000 then
		digitos := 7;
	elsif codigo < 100000000 then
		digitos := 8;
	elsif codigo < 1000000000 then
		digitos := 9;
	else
		digitos := 10;
	end if;
	return digitos;
end numero_de_digitos;

