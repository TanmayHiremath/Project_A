entity twos_complement is
port(
	I0 : in bit_vector(15 downto 0);
	A     : out bit_vector(15 downto 0)
	);
end entity twos_complement;

architecture calc of twos_complement is 
component KS_ADDER
	port(
	I0,I1 : in bit_vector(15 downto 0);
	C_in	:	in bit;
	A     : out bit_vector(15 downto 0);
	C_out		: out bit
	);
end component;
component ones_complement
port (
	I0 : in bit_vector(15 downto 0);
	O   : out bit_vector(15 downto 0)	
);
end component;
	signal temp: bit_vector(15 downto 0);
	begin 
	F1: ones_complement port map(I0=>I0,O=>temp);
	F2: KS_ADDER port map(I0=>temp,I1=>"0000000000000000",C_in=>'0',A=>A);
end calc;
	