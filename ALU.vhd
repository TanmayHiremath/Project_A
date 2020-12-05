
--ALU
entity ALU is
port (
	D0, D1 : in bit_vector(15 downto 0); --inputs
	
	S0, S1 : in bit; --control inputs
	A      : out bit_vector(15 downto 0); --output vector
	C,Z    : out bit; --carry bit and zero bit;
	Carryo: out bit_vector(16 downto 0)
);
end entity ALU;

architecture structure of ALU is 
	
component XOR1
	port (
		D0,D1 : in bit_vector(15 downto 0);
		A      : out bit_vector(15 downto 0) --output vector
	);
	end component;	
component NAND1 
port (
	D0,D1 : in bit_vector(15 downto 0);
	A      : out bit_vector(15 downto 0) --output vector
	);
end component;
component KS_ADDER
port(
	I0,I1 : in bit_vector(15 downto 0);
	C_in	:	in bit;
	A     : out bit_vector(15 downto 0);
	C_out		: out bit;
	Carryo: out bit_vector(16 downto 0)
	);
end component;	
	
component subtractor
port(
	I0,I1 : in bit_vector(15 downto 0);
	O     : out bit_vector(15 downto 0)
	);
end component;

signal temp1,temp2,temp3,temp4:bit_vector(15 downto 0);
signal var1,var2,var3,var4: bit ;
signal out_temp : bit_vector(15 downto 0);
signal random1,random2 : bit;
		
begin
F1: KS_ADDER port map(I0=>D0,I1=>D1,C_in=>'0',A=>temp1,C_out=>C,Carryo=>Carryo);
F2: subtractor port map(I0=>D0,I1=>D1,O=>temp2);
F3: XOR1 port map(D0=>D0,D1=>D1,A=>temp3);
F4: NAND1 port map(D0=>D0,D1=>D1,A=>temp4);

var1 <= (not S1) AND (not S0);
var2 <= (not S1) AND (S0);
var3 <= (S1) AND (S0);
var4 <= (S1) AND (not S0);

expression : for i in 0 to 15 generate
	out_temp(i) <= (var1 and temp1(i)) OR (var2 and temp2(i)) OR (var3 and temp3(i)) OR (var4 and temp4(i));
end generate expression;

A <= out_temp;

random2 <= out_temp(0) OR out_temp(1) OR out_temp(2) OR out_temp(3) OR out_temp(4) OR out_temp(5) OR out_temp(6)
			  OR out_temp(7) OR out_temp(8) OR out_temp(9) OR out_temp(10) OR out_temp(11) OR out_temp(12)
			  OR out_temp(13) OR out_temp(14) OR out_temp(15);

Z <= not random2;

end structure;