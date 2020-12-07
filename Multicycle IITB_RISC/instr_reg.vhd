library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity instr_reg is
  port(clk:in std_logic;
       and_ir:in std_logic_vector(7 downto 0);
       mem_d:in std_logic_vector(15 downto 0);
       inp_control:in std_logic_vector(1 downto 0);
       ir_out:out std_logic_vector(15 downto 0));
end entity;

architecture behave of instr_reg is

signal irReg:std_logic_vector(15 downto 0);
begin
  process(clk,and_ir,mem_d)
    begin
      if (rising_edge(clk)) then
        if (inp_control="10") then
          irReg(7 downto 0) <= and_ir;
        elsif (inp_control="01") then
          irReg <= mem_d;
        end if;
      end if;
  end process;

  ir_out<=irReg;
end behave;

--if (rising_edge(clk)='1' and inp_control="10") then
--  irReg(7 downto 0)<=and_ir;
--elsif rising_edge(clk)='1' and inp_control="01" then
--  irReg<= mem_d;
--end if;

  --    Rbank<=irReg;
    --  penc<=irReg;
      --NOR_ir<=irReg;
      --SE10<=irReg;
      --SE7<=irReg;
      --ZP10<=irReg;

  --process(outp_control)
    --  if(outp_control="001") then
    --  Rbank<=irReg;
    --  penc<=(others=>'0');
    --  NOR_ir<=(others=>'0');
    --  SE10<=(others=>'0');
    --  SE7<=(others=>'0');
    --  ZP10<=(others=>'0');
    --elsif(outp_control="010") then
      --penc<=irReg;
    --  Rbank<=(others=>'0');
    --  NOR_ir<=irReg;
    --  SE10<=(others=>'0');
    --  SE7<=(others=>'0');
      --ZP10<=(others=>'0');
  --  elsif(outp_control="100") then
    --  NOR_ir<=irReg;
    --  Rbank<=(others=>'0');
    --  penc<=(others=>'0');
    --  SE10<=(others=>'0');
    --  SE7<=(others=>'0');
    --  ZP10<=(others=>'0');
    --elsif(outp_control="011") then
      --NOR_ir<=(others=>'0');
      --Rbank<=(others=>'0');
      --penc<=(others=>'0');
  --  SE10<=irReg;
  --  SE7<=(others=>'0');
  --  ZP10<=(others=>'0');
  --elsif(outp_control="110") then
    --SE10<=(others=>'0');
  --  NOR_ir<=(others=>'0');
  --  Rbank<=irReg;
  --  penc<=(others=>'0');
  --  SE7<=irReg;           --required everywhere
  --  ZP10<=(others=>'0');
  --elsif(outp_control="101") then
  --  ZP10<=irReg;
  --  SE10<=(others=>'0');
  --  SE7<=(others=>'0');
  --  NOR_ir<=(others<='0');
  --  Rbank<=irReg;
  --  penc<=(others=>'0');
  --end if;
  --end process;
