function es_bizkaibus(codigo : Integer) return Boolean is

   --- Entrada: Un codigo de autobus (Integer)
   --- Pre: el codigo tiene 5 digitos
   --- Salida: un valor booleano
   --- Post: true si el codigo de autobus comienza por 2 o por 3
	digito : Integer;
begin
	digito := codigo / 1000;
	return (digito = 2 or digito = 3);
end es_bizkaibus;
