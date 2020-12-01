entity MY_XOR is 
port( A,B:in bit_vector(0 to 15);
		O:out bit_vector(0 to 15)
		);
		
End MY_XOR;
 architecture behavioral of MY_XOR is
 
 begin
 
-- O <= A and B;
GEN_XOR: for I in 0 to 15 generate
O(I) <= A(I) XOR B(I);
end generate GEN_XOR;
 end behavioral;