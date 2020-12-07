library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity i5reg is

port(mem2_d1,W_out: in unsigned(15 downto 0); --W_out is the i_W in the diagram
     dest_out: in std_logic_vector(2 downto 0);
	  i4_pc_out:in unsigned(15 downto 0);
	  i5_pc_out:out unsigned(15 downto 0);
     M5,WB_cont,i4_valid,clk: in std_logic;
	  i5_W2_out : out unsigned(15 downto 0);
	  i5_dest: out std_logic_vector(2 downto 0);
	  i5_valid,i5_WB: out std_logic);

end entity;

architecture crucio of i5reg is
signal i5_W2_outreg :unsigned(15 downto 0);
signal i5_pc_outreg: unsigned(15 downto 0);
signal i5_destreg:std_logic_vector(2 downto 0);
signal i5_validreg:std_logic;
signal i5_WBreg:std_logic;

begin

 process(clk)
  begin
   if(rising_edge(clk)) then
	  if(M5='1') then
	   i5_W2_outreg <= mem2_d1;
	  else
	   i5_W2_outreg <= W_out;
	  end if;
	--i5_W2_out<=i5_W2_outreg;
 i5_destreg <= dest_out;
 i5_WBreg <= WB_cont;
 i5_validreg <= i4_valid;
 i5_pc_outreg<=i4_pc_out;

   end if;
 end process;
 i5_W2_out<=i5_W2_outreg;
 i5_dest <= i5_destreg;
 i5_WB <= i5_WBreg;
 i5_valid <=i5_validreg;
 i5_pc_out<=i5_pc_outreg;
end crucio;
