library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu2 is

port(i3_alu_a,pc_in,se16,i3_alu_b: in unsigned(15 downto 0);
     clk,M2,M3,c_en,z_en,opr : in std_logic; -- 'valid' bit not kept heer, if want to put, do it here
	  alu2_out : out unsigned(15 downto 0);
	  zero_out,carry_out : out std_logic);
	  
end entity;

architecture mockingjay of alu2 is 

signal alu2_a : unsigned (15 downto 0);
signal alu2_b : unsigned (15 downto 0);
signal carry: std_logic;
signal zero: std_logic;
signal alu2_out1: unsigned (15 downto 0);

begin

process(i3_alu_a,pc_in,se16,i3_alu_b,clk,M2,M3,c_en,z_en,opr,alu2_a,alu2_b,zero,carry)  --if want to put valid bit, do it here as well

variable alu2_fadd : unsigned (16 downto 0);

begin 

if(m2='1') then
alu2_a <= i3_alu_a;
else
alu2_a <= pc_in;

end if;

if(m3='1') then
alu2_b <= i3_alu_b;
else
alu2_b <= se16;
end if;

if(opr='1') then --NAND OPERATION
alu2_out <= alu2_a NAND alu2_b;
alu2_out1 <= alu2_a NAND alu2_b;
 
else             --ADD OPERATION
alu2_fadd := resize(alu2_a,17)+resize(alu2_b,17); --if want to add with 'carry' put this statement "+resize(carry,17)"
alu2_out<= unsigned(alu2_fadd(15 downto 0));
alu2_out1<= unsigned(alu2_fadd(15 downto 0));

--CARRY FLAG being taken care of--
 if(c_en='1' and rising_edge(clk)) then
  carry <= alu2_fadd(16);
 end if;
end if;

--ZERO FLAG being modified here----

if(z_en='1' and rising_edge(clk)) then --change
 if(alu2_out1="0000000000000000") then
  zero <= '1';
 else
  zero<='0';
 end if;
end if;
zero_out<=zero;
carry_out<=carry;


end process;
end mockingjay;
 