library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is
port(t1_ain,t2_ain,r7_ain,SE10_ain,SE7_ain: in unsigned(15 downto 0);
     clk,A1,A0,B1,B0,P1,P0,c_en,z_en:in std_logic;--t1_eno,r7_eno : in std_logic;
     alu_out:out unsigned(15 downto 0);
     zero_out,carry_out:out std_logic;
	  alu_z: out std_logic);
	  --t1_aout,r7_aout: out unsigned(15 downto 0) );

end entity;

architecture Flames of ALU is

signal alu_a: unsigned (15 downto 0);
signal alu_b: unsigned (15 downto 0);
signal carry:std_logic;
signal zero:std_logic;
signal alu_out1: unsigned (15 downto 0);

begin

--signal alu_out: unsigned (15 downto 0);



--signal alu_avec: std_logic_vector(15 downto 0);
--signal alu_bvec: std_logic_vector(15 downto 0);
--signal alu_fadd17: std_logic_vector(16 downto 0) --fadd=full_add 17 bit long
--signal alu_fadd16: std_logic_vector(16 downto 0) --fadd=full_add617 bit long
--process(A1,A0,B1,B0,P1,P0,c_en,z_en) --change
process(A1,A0,B1,B0,P1,P0,c_en,z_en, t1_ain, r7_ain, t2_ain, SE10_ain, SE7_ain, alu_a, alu_b, clk, zero, carry) --change
variable alu_fadd:unsigned(16 downto 0);

begin
if(A1='1' and A0='0') then
 alu_a <= t1_ain;
elsif(A1='0' and A0='1') then
 alu_a <= r7_ain;
else
 alu_a <= (others=>'0');
end if;
------------------------------
if(A1='1' or A0='1') then
if(B1='1' and B0='0') then
 alu_b <= t2_ain;
elsif(B1='1' and B0='1') then
 alu_b <= (0=>'1',others=>'0');
elsif(B1='0' and B0='1') then
 alu_b <= SE10_ain;
else
 alu_b <= SE7_ain;
end if;
else
  alu_b<=(others=>'0');
end if;
-------------------------------

if(P1='0' and P0='1') then
 alu_out <= alu_a NAND alu_b;
 alu_out1 <= alu_a NAND alu_b;
elsif(P1='1' and P0='0') then
 alu_out <= alu_a - alu_b;
 alu_out1 <= alu_a - alu_b;
else
--alu_avec <= std_logic_vector(alu_a);
--alu_bvec <= std_logic_vector(alu_b);
--alu_fadd17 <= ('0' & A) + ('0' & B);
alu_fadd := resize(alu_a,17)+resize(alu_b,17);
alu_out <= unsigned (alu_fadd(15 downto 0));
alu_out1 <= unsigned (alu_fadd(15 downto 0));
  ------carry bit being takencare of here -----
 if(c_en='1'and rising_edge(clk)) then
   carry<= alu_fadd(16);
 end if;
end if;

----Zero Flag------
if(alu_out1="0000000000000000") then
alu_z<='1';
else
alu_z<='0';
end if;

if(z_en='1' and rising_edge(clk)) then --change
 if(alu_out1="0000000000000000") then
  zero <= '1';
else
  zero<='0';
end if;
end if;
zero_out<=zero;
carry_out<=carry;
------output-------

--if(t1_eno='1') then
--t1_out <= alu_out;
--elsif(r7_eno='1') then
--r7_out <= alu_out;

--end if;

end process;
end Flames;
