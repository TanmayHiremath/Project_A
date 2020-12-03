entity OR_2 is 
port (
	H,I : in bit;
	J   : out bit	
);
end entity OR_2;


architecture struct of OR_2 is 
begin

J <= H OR I;

end struct ;