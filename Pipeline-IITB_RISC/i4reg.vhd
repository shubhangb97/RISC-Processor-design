library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity i4reg is
port(clk:in std_logic;
      opcode_i3:in std_logic_vector(5 downto 0); --IMP for setting=valid bit if required also required for changing pc 0 and 1 bits are last 2 of ir
      c_in:in std_logic;
      z_in:in std_logic;
      valid_in:in std_logic;-- from i3 no invalidate here
      stall:in std_logic;
      --W
		MEM_cont_in: in std_logic_vector(2 downto 0);
		WB_cont_in: in std_logic;
      B:in unsigned(15 downto 0);
      zp_out:in unsigned(15 downto 0);
      alu2_out:in unsigned(15 downto 0);--L

      dest_in:in std_logic_vector(2 downto 0);
      pc_in:in unsigned(15 downto 0);

      W_control:in std_logic_vector(1 downto 0);
      BEQ_comp:in std_logic;
      --prev_control:in std_logic_vector(12 downto 0);


      MEM_cont: out std_logic_vector(2 downto 0);
      WB_cont:out std_logic;
     i4_valid:out std_logic;
     W_out:out unsigned(15 downto 0);
     L_out:out unsigned(15 downto 0);
     dest_out:out std_logic_vector(2 downto 0);
     pc_out:out unsigned(15 downto 0));
end entity;

architecture behave of i4reg is

--signal inter1reg:std_logic_vector(32 downto 0);
signal MEM_contreg:std_logic_vector(2 downto 0);
signal WB_contreg:std_logic;
signal i4_validreg:std_logic;
signal W_outreg:unsigned(15 downto 0);
signal L_outreg:unsigned(15 downto 0);
signal dest_outreg:std_logic_vector(2 downto 0);
signal pc_outreg: unsigned(15 downto 0);


begin
  process(clk)
  variable opcode_4 : std_logic_vector(3 downto 0);
    begin
      if(rising_edge(clk)) then
-- handling valid bit
        if(valid_in='0') then
        i4_validreg<='0';-- now handling conditions
      elsif((opcode_i3="000010" and c_in='0') or (opcode_i3="000001" and z_in='0') or (opcode_i3="001010" and c_in='0') or (opcode_i3="001001" and z_in='0')) then
      i4_validreg<='0';
      --elsif(stall='1') then
      --i4_validreg<='0';-- if stall
    else
      i4_validreg<='1';
      end if;
--handling W
      if(W_control="01") then
        W_outreg<=alu2_out;
      elsif(W_control="11") then
        W_outreg<=B;
      elsif(W_control="10") then
        W_outreg<=pc_in;
      elsif(W_control="00") then
        W_outreg<=zp_out;
      end if;

--handling L
  L_outreg<=alu2_out;

--handling dest
  dest_outreg<=dest_in;

--handling pc
opcode_4:=opcode_i3(5 downto 2);
if(opcode_4="1000") then
  pc_outreg<=alu2_out;
elsif(opcode_4="1001") then
   pc_outreg<=B;
 elsif(BEQ_comp='1') then
 pc_outreg<=alu2_out;
 else
  pc_outreg<=pc_in;
end if;
MEM_contreg<=MEM_cont_in;
WB_contreg<=WB_cont_in;
  else

  null;

  end if;
  end process;

  MEM_cont<=MEM_contreg;
  WB_cont<=WB_contreg;
 i4_valid<=i4_validreg;
 W_out<=W_outreg;
 L_out<=L_outreg;
 dest_out<=dest_outreg;
 pc_out<=pc_outreg;
--  inter1reg_out <= inter1reg;
end behave;
