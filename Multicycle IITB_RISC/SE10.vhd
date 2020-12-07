--Edited by Vineet 4th Nov 12.23pm
library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SE10 is
  port(ir:in std_logic_vector(15 downto 0);
       se10_out:out unsigned(15 downto 0));
end entity;

architecture behave of SE10 is
  begin
    se10_out<=unsigned(resize(signed(ir(5 downto 0)),16));
  end behave;
  
--process(alu_b_control)
--if(alu_b_control="01") then
--  se10_out<=unsigned(resize(signed(ir(5 downto 0)),16));
--else
  --se10_out<=(others=>'0');
--end if;
--end process;
