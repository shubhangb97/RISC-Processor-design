library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mem is
  port(t2,t1,r7:in unsigned(15 downto 0);
      clk, mem_RD, mem_WR,mem_a_control:in std_logic;
--,mem_d_control:in std_logic;
      mem_d_out:out std_logic_vector(15 downto 0));-- r7 is pc
end entity;

architecture mem_prototype of mem is

-----------Define variables/signals----------------------
	--signal current_state: FSMstate;
  type mem_sto is array (0 to 31) of std_logic_vector(15 downto 0);
  signal mem: mem_sto := (0 => "1100000001000100", 1=> "0000101001000000" , 2=> "0000101001000000" , 3=> "0000101001000000",4=>"0000101001000000", 5=>"0000101101001000" ,others =>"0000000000000000");
begin
--process(clk,mem_RD,mem_WR,mem_a_control) --change
process(clk,mem_RD,mem_WR,mem_a_control,mem,t1,r7) --change
begin
if(mem_WR='1' and rising_edge(clk)) then
			--if(mem_d_control='0') then --only 1 case
    if mem_a_control='0' then  --change
      mem(to_integer(r7))<=std_logic_vector(t2); --change  mem_a not defined
    else                       --change
      mem(to_integer(t1))<=std_logic_vector(t2); --change
    end if;                    --change
  --mem(to_integer(mem_a))<=t2;
				--else
  				--mem(to_integer(mem_a))<=r7;
				--end if;
end if; -- latch here
if(mem_a_control='1' and mem_RD='1') then --change
mem_d_out<=mem(to_integer(t1));
elsif(mem_a_control='0' and mem_RD='1') then --change
mem_d_out<=mem(to_integer(r7));
else
mem_d_out<=(others=>'0'); -- to prevent a latch here
end if;
end process;
end mem_prototype;
