with decimal_a_hexadecimal_aux;
procedure decimal_a_hexadecimal(decimal : Integer) is
digito : Integer;
begin
   if n = 0 then
      return;
   end if;
   decimal_a_hexadecimal(decimal / 16);
   digito = n % 16;
   if digito <= 10 then
      put(digito);
   elsif digito = 10
      put('a');
   elsif digito = 11
      put('b');
   elsif digito = 12
      put('c');
   elsif digito = 13
      put('d');
   elsif digito = 14
      put('e');
   else
      put('f');
end decimal_a_hexadecimal;