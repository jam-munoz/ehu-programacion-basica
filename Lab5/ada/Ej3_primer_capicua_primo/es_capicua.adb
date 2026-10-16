function es_capicua (n: in integer) return boolean is
	-- pre: n >= 1
	-- post: el resultado True si n es capicua y False si no

	N_Inverso,
	Digito,
	Resto_Digitos : integer;
	es_capicua : Boolean;
begin
	es_capicua := true;
	N_Inverso := 0;
	Digito := n;
	if n < 1 then
		es_capicua := False;
	else
		while Digito > 0 loop
			Resto_Digitos := Digito rem 10;
			N_Inverso := N_Inverso * 10 + Resto_Digitos;
			Digito := Digito / 10;
		end loop;
		if N_Inverso /= n then
			es_capicua := False;
		end if;
	end if;
	return es_capicua;
end es_capicua;
