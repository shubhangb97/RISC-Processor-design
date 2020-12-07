library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity beq_comp is

port(A,B: in unsigned (15 downto 0);
      BEQ_comp : in std_logic; --BEQ_comp is BEQ_enable
		beq_out : out std_logic);
		
end entity;

architecture katniss of beq_comp is 

begin

process(BEQ_comp,A,B)

begin

if(BEQ_comp='1') then
 if(A=B) then
  beq_out<='1';
  else
  beq_out<='0';
 end if;
 else
 beq_out<='0';
end if;

end process;
end katniss;