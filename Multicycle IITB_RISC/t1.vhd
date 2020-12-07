--Updated by Vineet on 4th Nov at 3.23pm

library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity t1 is
port(clk:in std_logic; --change
     rf_d1:in unsigned(15 downto 0);
     alu_out:in unsigned(15 downto 0);
     t1_in:in std_logic_vector(1 downto 0);
     t1_out:out unsigned(15 downto 0));
end entity;

architecture behave of t1 is

signal t1_reg:unsigned(15 downto 0);

begin
  process(clk,t1_in)
    begin
      if(rising_edge(clk)) then --change
        if(t1_in="01") then
          t1_reg <= rf_d1;
        elsif(t1_in="10") then
          t1_reg <= alu_out;
        end if;
      end if;
    end process;
  t1_out <= t1_reg;
end behave;
