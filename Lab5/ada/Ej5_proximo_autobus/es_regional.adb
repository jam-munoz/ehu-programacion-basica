function es_regional(codigo : Integer) return Boolean is

   --- Entrada: Un codigo de autobus (Integer)
   --- Pre: el codigo tiene 5 digitos
   --- Salida: un valor booleano
   --- Post: true si el codigo de autobus comienza por 48
	digito : Integer;
begin
	digito := codigo / 100;
	return (digito = 48);
end es_regional;
