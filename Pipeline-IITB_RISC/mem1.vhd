library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mem1 is
  port(pc_out:in unsigned(15 downto 0);
      --clk, mem_RD:in std_logic;
--,mem_d_control:in std_logic;
      mem1_d_out:out std_logic_vector(15 downto 0));-- r7 is pc
end entity;

architecture mem_prototype of mem1 is

-----------Define variables/signals----------------------
	--signal current_state: FSMstate;
  type mem_sto is array (0 to 31) of std_logic_vector(15 downto 0);
   signal mem: mem_sto := (0 => "0111000000001111", 1=> "0110000011110000" , 2=> "0000000000000000" , 3=> "0000101001000000",4=>"0000101001000000", 5=>"0000101101001000" ,others =>"0000000000000000");
 -- signal mem: mem_sto := (0 => "0000010000001000", 1=> "0000100010011000" , 2=> "0000000000000000" , 3=> "0000101001000000",4=>"0000101001000000", 5=>"0000101101001000" ,others =>"0000000000000000");
 -- signal mem: mem_sto := (0 => "0111000000001111", 1=> "0110000011110000" , 2=> "0000000000000000" , 3=> "0000101001000000",4=>"0000101001000000", 5=>"0000101101001000" ,others =>"0000000000000000");
--signal mem: mem_sto := (0 => "0100010001000010", 1=> "0000000001010000" , 2=> "1111101001000000" , 3=> "0000101001000000",4=>"0000101001000000", 5=>"1111000101001000" ,others =>"0000000000000000");--LW test
--  signal mem: mem_sto := (0 => "0100000001000010", 1=> "0101010001000010" , 2=> "0100011001000010" , 3=> "0000101001000000",4=>"0000101001000000", 5=>"1111000101001000" ,others =>"0000000000000000");--SW test
  begin
--process(clk,mem_RD,mem_WR,mem_a_control) --change
process(pc_out,mem) --change
begin
                  --change
  --mem(to_integer(mem_a))<=t2;
				--else
  				--mem(to_integer(mem_a))<=r7;
				--end if;
mem1_d_out<=mem(to_integer(pc_out));

end process;
end mem_prototype;
