entity AND2 is 
port (
	E,F : in bit;
	G   : out bit	
);
end entity AND2;


architecture struct of AND2 is 
begin

G <= E AND F;

end struct ;