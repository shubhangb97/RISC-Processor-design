library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity i1reg is
port(clk:in std_logic;
    -- valid_out:out std_logic;
     stall:in std_logic;
    -- invalidate:in std_logic;
	  lmcont: in std_logic;
    nor_ir:in std_logic;
     inter1reg_in : in std_logic_vector (32 downto 0);
     inter1reg_out:out std_logic_vector(32 downto 0);
     and_ir:in std_logic_vector(7 downto 0));
end entity;

architecture behave of i1reg is

signal inter1reg:std_logic_vector(32 downto 0);

begin
  process(clk,lmcont,stall,nor_ir)
    begin
      if(rising_edge(clk)) then
        if(lmcont='1' and stall='0' and nor_ir='0') then
          inter1reg(24 downto 17)<=and_ir;
        elsif( lmcont='0' and stall='0') then
          inter1reg <= inter1reg_in;
        else
          inter1reg <= inter1reg_in;



        end if;
      end if;
    end process;
  inter1reg_out <= inter1reg;
end behave;
