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
		D0,D1 : in bit_vector(0 to 15);
		A      : out bit_vector(0 to 15) --output vector
	);
	end component;	
component NAND1 
port (
	D0,D1 : in bit_vector(0 to 15);
	A      : out bit_vector(0 to 15) --output vector
	);
end component;
component KS_ADDER
port(
	I0,I1 : in bit_vector(0 to 15);
	C_in	:	in bit;
	A     : out bit_vector(0 to 15);
	C_out		: out bit
	);
end component;	
	
component subtractor
port(
	I0,I1 : in bit_vector(0 to 15);
	O     : out bit_vector(0 to 15)
	);
end component;
signal temp1,temp2,temp3,temp4:bit_vector(0 to 15);	
		
begin
F1:	KS_ADDER port map(I0=>D0,I1=>D1,C_in=>'0',A=>temp1,C_out=>C);
F2: subtractor port map(I0=>D0,I1=>D1,O=>temp2);
F3: XOR1 port map(D0=>D0,D1=>D1,A=>temp3);
F4: NAND1 port map(D0=>D0,D1=>D1,A=>temp4);
end structure;