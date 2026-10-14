function decimal_a_binario (n: in integer) return Integer is
   --- Entrada: 1 numero
   --- pre: el numero entero es >= 0
   --- Salida: 1 numero
   --- post: el resultado ser el numero binario equivalente al numero de entrada

nDec_aux, binary, power : Integer;

begin
   nDec_aux:=n;
   binary := 0;
   power := 1;
   loop exit when nDec_aux = 0;
      binary := binary + (nDec_aux rem 2 * power);
      nDec_aux := nDec_aux / 2;
      power := power * 10;
    end loop;
    return binary;
    
end decimal_a_binario;
