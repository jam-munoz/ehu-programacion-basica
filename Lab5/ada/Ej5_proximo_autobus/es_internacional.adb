function es_internacional(codigo : Integer) return Boolean is

   --- Entrada: Un codigo de autobus (Integer)
   --- Pre: el codigo tiene 6 digitos
   --- Salida: un valor booleano
   --- Post: true si el codigo de autobus comienza por 34
	digito : Integer;
begin
	digito := codigo / 10000;
	return (digito = 34);
end es_internacional;
