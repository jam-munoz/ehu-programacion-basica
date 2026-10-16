function es_primo (n: in integer) return boolean is
--Especificacion
--Entrada: Un numero entero n
--Pre: n >=1
--Salida: un booleano
--Post: valor_salida1 sera true si n es primo y false si n no es primo

	posible_Divisor : Integer;
	primo : Boolean;

begin
	Primo := true;
	posible_divisor := 5;
	if n < 2 then
		primo := false;
	elsif n < 4 then
		posible_Divisor := n;
	elsif n rem 2 = 0 or n rem 3 = 0 then
		primo := false;
	end if;
	loop exit when primo = false or posible_Divisor * posible_Divisor > n;
			if n rem posible_Divisor = 0 or n rem (posible_Divisor + 2) = 0 then
				primo := false;
			end if;
			posible_Divisor := posible_Divisor + 6;
	end loop;

	return(primo);
end es_primo;
