function frecuencia_de_salida(tipo_de_autobus : Integer; tipo_de_dia : Character) return Integer is
	--- Entrada: 1) Integer: tipo_de_autobus
	---          2) Character: tipo_de_dia
	--- Pre: tipo_de_autobus es un valor entre 1 y 6
	---      tipo_de_dia solo puede tomar los valores 'L', 'S' o 'F' (laborable, sabado o festivo, respectivamente)
	--- Salida: Un Integer: frecuencia (representada en minutos)
	--- Post: la frecuencia es un valor >0 que se corresponde con la frecuencia de autobuses de tipo tipo_de_autobus
	---       los dias de tipo tipo_de_dia, segun lo reflejado en la tabla del enunciado del ejercicio
	frecuencia : Integer;
begin
	if tipo_de_autobus = 1 then
		if tipo_de_dia = L then
			frecuencia := 10;
		else
			frecuencia := 15;
		end if;
	elsif tipo_de_autobus = 2 then
		if tipo_de_dia /= F then
			frecuencia := 20;
		else
			frecuencia := 30;
		end if;
	elsif tipo_de_autobus = 3 then
		frecuencia := 30;
	elsif tipo_de_autobus = 4 then
		if tipo_de_dia = L then
			frecuencia := 90;
		elsif tipo_de_dia = S then
			frecuencia := 120;
		else
			frecuencia := 240;
		end if;
	elsif tipo_de_autobus = 5 then
		if tipo_de_dia /= F then
			frecuencia := 480;
		else
			frecuencia := 720;
		end if;
	else
		frecuencia := 60;
	end if;
	return frecuencia;
end frecuencia_de_salida;
