function es_primo (n: in integer) return boolean is 
--Especificacion
--Entrada: Un numero entero n
--Pre: n >=1
--Salida: un booleano
--Post: valor_salida1 sera true si n es primo y false si n no es primo

   posible_Divisor:Integer;
   primo:boolean;

begin
    Primo:=True;
    posible_divisor:=2;
    loop exit when  primo=false or posible_divisor=n;                
      ?????????
    
   end loop;
   
   return(primo);
end es_primo;
