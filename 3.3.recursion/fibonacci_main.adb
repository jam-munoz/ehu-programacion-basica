function fibonacci_main(n : Integer) return Integer is
begin
	if (n < 0) then
		return (-1);
	elsif (n = 0) then
		return (0);
	elsif (n = 1) then
		return (1);
	end if;
	return (fibonacci_main(n - 1) + fibonacci_main(n - 2));
end fibonacci_main;
