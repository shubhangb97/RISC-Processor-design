--Updated by Vineet on 4th Nov at 3.53pm

library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity zp is
port(ir:in std_logic_vector(15 downto 0);
     zp_out:out unsigned(15 downto 0));
end entity;

architecture behave of zp is
  begin
    zp_out(15 downto 7) <= unsigned(ir(8 downto 0));
    zp_out(6 downto 0) <= (others=>'0');
  end behave;

--process(regBank_d3_control)
--if(regBank_d3_control="01") then
--  zp_out(15 downto 7)<=ir(8 downto 0);
--  zp_out(6 downto 0)<=(others=>'0');
--else
  --zp_out<=(others=>'0');
--end if;
--end process;
