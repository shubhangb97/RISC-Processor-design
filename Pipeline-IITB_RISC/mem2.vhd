library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mem2 is
  port(mem2_d2_in,mem2_a:in unsigned(15 downto 0);
      clk, mem2_RD, mem2_WR,valid:in std_logic;
--,mem_d_control:in std_logic;
      mem2_d1_out:out unsigned(15 downto 0));-- r7 is pc
end entity;

architecture mem_prototype of mem2 is

-----------Define variables/signals----------------------
	--signal current_state: FSMstate;
  type mem_sto is array (0 to 63) of unsigned(15 downto 0);
  signal mem2: mem_sto := (0 => "0000000001000100", 1=> "0000101101100000" , 2=> "0000101001000000" , 3=> "0000101001000000",4=>"0000101001000000", 5=>"0000101101001000",10=>"0000000000000101" ,others =>"0000000000000110");
begin
--process(clk,mem_RD,mem_WR,mem_a_control) --change
process(clk,mem2_RD,mem2_WR,mem2_a,valid,mem2) --change
begin
if((mem2_WR='1'and valid='1') and rising_edge(clk)) then
      mem2(to_integer(mem2_a))<=mem2_d2_in; --change  mem_a not defined
    --else                       --change
    --  mem(to_integer(t1))<=std_logic_vector(t2); --change
    --end if;                    --change
  --mem(to_integer(mem_a))<=t2;
				--else
  				--mem(to_integer(mem_a))<=r7;
				--end if;
end if; -- latch here


if((mem2_RD='1')) then --change
mem2_d1_out<=mem2(to_integer(mem2_a));
else
mem2_d1_out<=(others=>'0'); -- to prevent a latch here
end if;
end process;
end mem_prototype;
