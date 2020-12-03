entity node_op is 
port(
	g1,p1,g2,p2 : in bit;
	Gi,Pi       : out bit
	);
end entity node_op;

architecture struct of node_op is 
signal X : bit;

component AND_2
port (
	E,F : in bit;
	G   : out bit	
);
end component;

component OR_2
port (
	H,I : in bit;
	J   : out bit	
);
end component;

begin
U0 : AND_2 port map (E=>p2, F=>g1, G=>X);
U1 : OR_2 port map (H=>g2, I=>X, J=>Gi);
U2 : AND_2 port map (E=>p2, F=>p1, G=>Pi);

end struct;