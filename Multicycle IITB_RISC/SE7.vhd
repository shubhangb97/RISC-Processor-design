--Edited by Vineet 4th Nov 12.22pm
library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SE7 is
  port(ir:in std_logic_vector(15 downto 0);
       se7_out:out unsigned(15 downto 0));
end entity;

architecture behave of SE7 is
  begin
    se7_out<=unsigned(resize(signed(ir(8 downto 0)),16)); --edited
  end behave;

--process(alu_b_control)
--if(alu_b_control="00") then
--  se7_out<=resize(signed(ir(8 downto 0)),16);
--else
--  se7_out<=(others=>'0');
--end if;
--end process;
