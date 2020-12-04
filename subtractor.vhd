entity subtractor is
port(
	I0,I1 : in bit_vector(15 downto 0);
	O     : out bit_vector(15 downto 0)
	);
end entity subtractor;
	
architecture calc of subtractor is 
component twos_complement
port(
	I0 : in bit_vector(15 downto 0);
	A     : out bit_vector(15 downto 0)
	);
end component;
component KS_ADDER
port(
	I0,I1 : in bit_vector(15 downto 0);
	C_in	:	in bit;
	A     : out bit_vector(15 downto 0);
	C_out		: out bit
	);
end component;	

signal temp: bit_vector(15 downto 0);

begin
F1:twos_complement port map(I0=>I1,A=>temp);
F2: KS_ADDER port map(I0=>I0,I1=>temp,C_in=>'0',A=>O);
end calc;