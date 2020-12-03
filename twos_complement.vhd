entity twos_complement is
port(
	I0 : in bit_vector(0 to 15);
	A     : out bit_vector(0 to 15)
	);
end entity twos_complement;

architecture calc of twos_complement is 
component KS_ADDER
	port(
	I0,I1 : in bit_vector(0 to 15);
	C_in	:	in bit;
	A     : out bit_vector(0 to 15);
	C_out		: out bit
	);
end component;	
	signal temp: bit_vector(0 to 15);
	begin 
	temp<= not I0;
	F1: KS_ADDER port map(I0=>temp,I1=>"0000000000000001",C_in=>'0',A=>A);
end calc;
	