entity ALU is 
port( I0,I1:in bit_vector(0 to 15);

		S0,S1:in bit;
		
		O:out bit_vector(0 to 15);
		C:out bit;
		Z:out bit
		);
		
End ALU;
 architecture structural of ALU is
 
component MY_XOR
	port( A,B:in bit_vector(0 to 15);
			O:out bit_vector(0 to 15)
			);
end component;

--signal TEMP_1,TEMP_2,TEMP_3,TEMP_4,TEMP_5,TEMP_6,TEMP_7:bit;

begin
 F1: MY_XOR port map  (A=>I0,B=>I1,O=>O); 
-- F2: MUX port map  (I0=>'1',I1=>'0',S=>D,O=>TEMP_2);
-- F3: MUX port map  (I0=>TEMP_1,I1=>TEMP_2,S=>C,O=>TEMP_3);
-- F4: MUX port map  (I0=>TEMP_2,I1=>TEMP_1,S=>C,O=>TEMP_4);
-- F5: MUX port map  (I0=>TEMP_3,I1=>TEMP_4,S=>B,O=>TEMP_5);
-- F6: MUX port map  (I0=>TEMP_4,I1=>TEMP_3,S=>B,O=>TEMP_6);
-- F7: MUX port map  (I0=>TEMP_5,I1=>TEMP_6,S=>A,O=>O);
-- E <= (I1 and S) or (I0 and (not S));
 
 end structural;