function proximo_autobus(codigo_bus, hora_actual, minutos_actuales : Integer; tipo_de_dia : Character) return Integer is
	--- Entrada: 1) Integer: codigo_de_autobus
	---          2) Integer: hora_actual
	---          3) Integer: minutos_actuales
	---          4) Character: tipo_de_dia

	--- Pre:     codigo_de_autobus >= 0
	---          0<= hora_actual <= 23
	---          0<= minutos_actuales <= 59
	---          tipo_de_dia solamente puede ser 'L' (laborable), 'S' (sabado) o 'F' (festivo)

	--- Salida:  1) Integer: minutos_que_faltan

	--- Post: minutos_que_faltan >=0 es el numero de minutos que faltan para que salga el siguiente autobus
	---       con codigo codigo_de_autobus
begin
	-- primero se obtiene el tipo_de_autobus
	tipo_de_bus := tipo_de_autobus(codigo_bus);
	-- luego se calcula la frecuencia de salida de ese tipo de bus en funcion del tipo de dia que sea hoy
	frec := frecuencia_de_salida(tipo_de_bus, tipo_de_dia);
	-- y por ultimo se calculan los minutos que faltan para que salga el siguiente bus, a partir de la
	-- frecuencia y la hora y minutos actuales
	????

end proximo_autobus;
