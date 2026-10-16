with numero_de_digitos, es_bilbobus, es_bizkaibus,
	  es_regional, es_nacional, es_internacional;

function tipo_de_autobus(codigo : Integer) return Integer is
	--- Entrada: Un codigo de autobus (Integer)
	--- Pre: el codigo es >=0
	--- Salida: un valor Integer que representa el tipo de autobus
	--- Post: el tipo es un valor entre 1 y 6
	-- 			1 (Bilbobus)
	-- 			2 (Bizkaibus)
	-- 			3 (regional)
	-- 			4 (nacional)
	-- 			5 (internacional)
	-- 			6 (servicio especial)
	tipo : Integer;
begin
	if es_bilbobus(codigo) then
		tipo := 1;
	elsif es_bizkaibus(codigo) then
		tipo := 2;
	elsif es_regional(codigo) then
		tipo := 3;
	elsif es_nacional(codigo) then
		tipo := 4;
	elsif es_internacional(codigo) then
		tipo := 5;
	else
		tipo := 6;
	end if;
	return tipo;
end tipo_de_autobus;
