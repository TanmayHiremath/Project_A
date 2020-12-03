entity AND_2 is 
port (
	E,F : in bit;
	G   : out bit	
);
end entity AND_2;


architecture struct of AND_2 is 
begin

G <= E AND F;

end struct ;