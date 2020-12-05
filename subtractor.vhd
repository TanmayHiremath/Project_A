entity subtractor is
port(
	I0,I1 : in bit_vector(15 downto 0);
	O     : out bit_vector(15 downto 0)
	);
end entity subtractor;
	
architecture calc of subtractor is 
component ones_complement
port (
	I0 : in bit_vector(15 downto 0);
	O   : out bit_vector(15 downto 0)	
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
F1:ones_complement port map(I0=>I1,O=>temp);
F2: KS_ADDER port map(I0=>I0,I1=>temp,C_in=>'1',A=>O);
end calc;