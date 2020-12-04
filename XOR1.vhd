entity XOR1 is 
port (
	D0,D1 : in bit_vector(15 downto 0);
	A      : out bit_vector(15 downto 0) --output vector
	);
end entity XOR1;

architecture plan of XOR1 is 

component XOR2
	port (
		E,F : in bit;
		G   : out bit
	);
	end component;
begin 

process1 : for i in 0 to 15 generate
U0: XOR2 port map (E => D0(i), F => D1(i), G=>A(i) );

end generate process1;

end plan;