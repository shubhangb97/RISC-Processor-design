--Updated by Vineet on 4th Nov at 4.23pm

library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity and_ir is
  port(ir_in: in std_logic_vector(15 downto 0);
       decod_out:in std_logic_vector(7 downto 0);
       and_ir_out:out std_logic_vector(7 downto 0));
end entity;

architecture behave of and_ir is
begin
        and_ir_out <= ir_in(7 downto 0) and decod_out(7 downto 0);
end behave;
