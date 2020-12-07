library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity InstrFetch is
port (mem1_d_out : in std_logic_vector(15 downto 0);
      alu2_out : in unsigned(15 downto 0);
      r7_out : in unsigned(15 downto 0);
      i3_alu_b : in unsigned (15 downto 0);  -- previously std_logic_vector
      pc_out : in unsigned(15 downto 0);
      if0, if1, if2 : in std_logic; --if0 is  stall
      invalidate : in std_logic;   --From forwarding logic
      lmcont:in std_logic;
      nor_ir:in std_logic;

      inter1reg_in : out std_logic_vector (32 downto 0);
      pc_in : out unsigned(15 downto 0));

end entity;

architecture behave of InstrFetch is

signal alu1_out:std_logic_vector(15 downto 0);

begin
  Alu1_adder: process(if0, pc_out,lmcont,nor_ir)
    begin
      if (if0 = '1' or (lmcont='1' and nor_ir='0') ) then
        alu1_out <= std_logic_vector(pc_out);
      else
        alu1_out <= std_logic_vector(pc_out + "0000000000000001");
      end if;
  end process Alu1_adder;

  update_PC: process(alu1_out, i3_alu_b, alu2_out, r7_out,if1,if2 )
    begin
      --if (rising_edge(clk)) then
      if (if1 = '0' and if2 = '0') then
        pc_in <= r7_out;                --Only when r7 = ra + rb i.e. Branch case
      elsif (if1 = '0' and if2 = '1') then --beq
        pc_in <= alu2_out;
      elsif (if1 = '1' and if2 = '0') then --jlr
        pc_in <= i3_alu_b;
      else
        pc_in <= unsigned(alu1_out);
      end if;
      --end if;
  end process update_PC;

  inter1reg_in(0) <= not(invalidate);
  inter1reg_in(16 downto 1) <= alu1_out; --pc
  inter1reg_in(32 downto 17) <= mem1_d_out;

--  bring_instr: process(pc_out)   DO this in mem1.vhd
--    begin
--  end process bring_instr;

--  ir_out<=irReg;
end behave;
