--Updated by Vineet on 4th Nov at 3.13pm

library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity t2 is
port(clk:in std_logic; --change
     rf_d2:in unsigned(15 downto 0);
     mem_d:in std_logic_vector(15 downto 0);
     t2_in:in std_logic_vector(1 downto 0);
     t2_out:out unsigned(15 downto 0));
end entity;

architecture behave of t2 is

signal t2_reg:unsigned(15 downto 0);

begin
    process(clk,t2_in)
      begin
        if(rising_edge(clk)) then
          if(t2_in="01") then
            t2_reg <= rf_d2;
          elsif(t2_in="10") then
            t2_reg <= unsigned(mem_d);
          end if;
        end if;
      end process;
    t2_out <= t2_reg;
end behave;
