entity ones_complement is 
port (
	I0 : in bit_vector(15 downto 0);
	O   : out bit_vector(15 downto 0)	
);
end entity ones_complement;


architecture struct of ones_complement is
--signal temp: bit_vector(15 downto 0); 
begin
process1 : for i in 0 to 15 generate
O(i)<= not I0(i);
end generate process1;

end struct ;
