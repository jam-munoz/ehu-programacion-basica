function es_bilbobus(codigo : Integer) return Boolean is
	--- Entrada: Un codigo de autobus (Integer)
	--- Pre: el codigo tiene 5 digitos
	--- Salida: un valor booleano
	--- Post: true si el codigo de autobus comienza por 1
	digito : Integer;
begin
	digito := codigo / 10000;
	return (digito = 1);
end es_bilbobus;
