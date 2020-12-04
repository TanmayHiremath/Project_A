entity NAND1 is 
port (
	D0,D1 : in bit_vector(15 downto 0);
	A      : out bit_vector(15 downto 0) --output vector
	);
end entity NAND1;

architecture plan of NAND1 is 

component AND_2
	port (
		E,F : in bit;
		G   : out bit
	);
	end component;
	signal temp: bit_vector(15 downto 0);
begin 
process1 : for i in 0 to 15 generate
U0:AND_2 port map (E => D0(i), F => D1(i), G=>temp(i) );
end generate process1;
A<= not temp;
end plan;