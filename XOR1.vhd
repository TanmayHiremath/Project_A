entity XOR1 is 
port (
	D0,D1 : in bit_vector(0 to 15);
	A      : out bit_vector(0 to 15); --output vector
	C,Z    : out bit --carry bit and zero bit
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

end generate process1
end plan;

