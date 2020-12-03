entity XOR2 is 
port (
	E,F : in bit;
	G   : out bit	
);
end entity XOR2;


architecture struct of XOR2 is 
begin

G <= E XOR F;

end struct ;
