procedure intercambiar(a, b : in out Integer) is
   temp : Integer;
begin
   temp := a;
   a := b;
   b := temp;
end intercambiar;