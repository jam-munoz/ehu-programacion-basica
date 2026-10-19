function gcd(a, b : in Integer) return Integer is
	res : Integer;
begin
	if b = 0 then
		res = a;
	else
		res := gcd(b, a rem b);
	end if;
	return res;
end gcd;
