function es_nacional(codigo : Integer) return Boolean is

   --- Entrada: Un codigo de autobus (Integer)
   --- Pre: el codigo tiene 3 o 4 digitos
   --- Salida: un valor booleano
   --- Post: true si el codigo de autobus no comienza por 48
	digito : Integer;
	nacional : Boolean;
begin
	digito := codigo / 1000;
	nacional := true;
	if codigo < 100 or codigo > 9999 then
		nacional := false;
	elsif codigo > 999 then
		digito := digito / 10;
	end if;
	if digito = 48 then
		nacional := false;
	end if;
	return (nacional);
end es_nacional;
