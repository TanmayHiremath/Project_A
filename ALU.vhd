--ALU
entity ALU is
port (
	D0, D1 : in bit_vector(0 to 15); --inputs
	
	S0, S1 : in bit; --control inputs
	A      : out bit_vector(0 to 15); --output vector
	C,Z    : out bit --carry bit and zero bit
);
end entity ALU;

architecture structure of ALU is 
	
component XOR1
	port (
		D0,D1 : in bit;
		A   : out bit
	);
	end component;	
	
begin
--U0: XOR1 port map (D0 => D0, D1 => D1, A => A );
--U1: XOR1 port map (A => D0, B => W, C => X);
--U2: SUM1 port map (A => D1, B => S, C => Z);
--U3: SUBTRACTOR1 port map (D => X, E => Z, F => Y);
end structure;