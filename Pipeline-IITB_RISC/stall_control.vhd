library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity stall_control is
port(clk:in std_logic;
    rf_a1:in std_logic_vector(2 downto 0);--rf_a1 of i2
    rf_a2:in std_logic_vector(2 downto 0);
    rf_a3_i3:in std_logic;
    i3_zp_control:in std_logic;
    mem2_RD_i3:in std_logic;
    i3_valid:in std_logic;
    i3_dest:in std_logic_vector(2 downto 0);
    nor_ir:in std_logic;


    lmcont:in std_logic;--it is the SE vala control
    stall_cont:out std_logic);



  end entity;

  architecture behave of stall_control is

  --signal inter1reg:std_logic_vector(32 downto 0);

  begin
    process(clk)
      begin
        --if(rising_edge(clk)) then
          if((rf_a1=i3_dest or rf_a2=i3_dest) and (rf_a3_i3='1' and i3_valid='1') and not(i3_zp_control='1') and (mem2_RD_i3='1' and i3_valid='1')) then
            stall_cont<='1';
          --elsif(lmcont='1' and nor_ir='0') then
           -- stall_cont<='1';
          else
            stall_cont<='0';
          end if;
        --end if;
      end process;
  end behave;
