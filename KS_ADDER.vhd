entity KS_ADDER is 
port(
	I0,I1 : in bit_vector(0 to 15);
	C_in	:	in bit;
	A     : out bit_vector(0 to 15);
	C_out		: out bit
	);
end entity;	
architecture calc of KS_ADDER is 

component gp_cal
	port (
		Ai,Bi : in bit;
		gi,pi   : out bit
	);
	end component;
	
component node_op
	port(
	g1,p1,g2,p2 : in bit;
	Gi,Pi       : out bit
	);
	end component;
	
	signal g_in,p_in,g_1,p_1,g_2,p_2,g_3,p_3,g_4,p_4,sum,temp : bit_vector(0 to 15);
	signal carry: bit_vector(0 to 16);
	
	
begin


pre_processing : for i in 0 to 15 generate
pre: gp_cal port map (Ai => I0(i), Bi => I1(i), gi => g_in(i), pi => p_in(i) );
end generate pre_processing;

g_1(0)<=g_in(0);
p_1(0)<=p_in(0);



--prefix computation start

stage1 : for i in 0 to 14 generate
U1: node_op port map (g1=>g_in(i),p1=>p_in(i),g2=>g_in(i+1),p2=>p_in(i+1),Gi=>g_1(i+1),Pi=>p_1(i+1));
end generate stage1;

pass1: for j in 0 to 1 generate
g_2(j)<=g_1(j);
p_2(j)<=p_1(j);
end generate pass1;





stage2 : for i in 0 to 13 generate
U2: node_op port map (g1=>g_1(i),p1=>p_1(i),g2=>g_1(i+2),p2=>p_1(i+2),Gi=>g_2(i+2),Pi=>p_2(i+2));
end generate stage2;

pass2: for j in 0 to 3 generate
g_3(j)<=g_2(j);
p_3(j)<=p_2(j);
end generate pass2;






stage3 : for i in 0 to 11 generate
U3: node_op port map (g1=>g_2(i),p1=>p_2(i),g2=>g_2(i+2),p2=>p_2(i+2),Gi=>g_3(i+4),Pi=>p_3(i+4));
end generate stage3;

pass3: for j in 0 to 7 generate
g_4(j)<=g_3(j);
p_4(j)<=p_3(j);
end generate pass3;




stage4 : for i in 0 to 7 generate
U4: node_op port map (g1=>g_3(i),p1=>p_3(i),g2=>g_3(i+4),p2=>p_3(i+4),Gi=>g_4(i+8),Pi=>p_4(i+8));
end generate stage4;

--prefix computation end
carry(0)<= C_in;
post_processing : for i in 0 to 15 generate
carry(i+1)<= g_4(i) or (p_4(i) and carry(0) );
sum(i)<= p_4(i) xor carry(i);
end generate post_processing;
A<=sum;
C_out<=carry(16);


end calc;