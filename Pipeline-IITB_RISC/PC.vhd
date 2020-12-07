library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PC is
port(clk:in std_logic;
     pc_in : in unsigned(15 downto 0);
     pc_out:out unsigned(15 downto 0);
     reset:std_logic);
end entity;

architecture behave of PC is

signal pc:unsigned(15 downto 0):=(others=>'0');

begin
  process(clk,reset)
    begin
      if(rising_edge(clk)) then
          pc <= pc_in;
      end if;
      if(reset='1') then
      pc<=(others=>'0');
    end if;
    end process;
  pc_out <= pc;
end behave;
