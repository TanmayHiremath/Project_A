entity node_op is 
port(
	g1,g2,p1,p2 : in bit;
	Gi,Pi       : out bit
	);
end entity node_op;

architecture struct of node_op is 
signal X : bit;

component AND2
port (
	E,F : in bit;
	G   : out bit	
);
end component;

component OR2
port (
	E,F : in bit;
	G   : out bit	
);
end component;

begin
U0 : AND2 port map (E=>p2, F=>g1, G=>X);
U1 : OR2 port map (E=>g2, F=>X, G=>Gi);
U2 : AND2 port map (E=>p2, F=>p1, G=>Pi);

end struct;