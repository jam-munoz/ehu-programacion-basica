function suma_binaria(binario1,binario2: in integer) return integer is
	sumaBin,resto1,resto2,llevada,peso,bin1,bin2 : integer;
begin
	bin1 := binario1;
	bin2 := binario2;
	peso := 1;
	sumaBin := 0;
	llevada := 0;
	while bin1 > 0 or bin2 > 0 or llevada > 0 loop
		resto1 := bin1 rem 2;
		bin1 := bin1 / 10;
		resto2 := bin2 rem 2;
		bin2 := bin2 / 10;
		if (resto1 + resto2 + llevada) rem 2 = 1 then
			sumaBin := sumaBin + 1 * peso;
		end if;
		peso := peso * 10;
		if resto1 + resto2 + llevada > 1 then
			llevada := 1;
		else
			llevada := 0;
		end if;
	end loop;
	return(sumaBin);
end suma_binaria;
