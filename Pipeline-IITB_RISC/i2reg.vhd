library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity i2reg is
port(clk:in std_logic;
      --opcode_in:in std_logic_vector(6 downto 0);
      ir:in std_logic_vector(15 downto 0);--data inputs
      pc_in:in unsigned(15 downto 0);
      valid_in:in std_logic;

      LMSM_penc:in std_logic_vector(2 downto 0);
      t_in:in std_logic_vector(8 downto 0);

      OR_cont:in std_logic_vector(3 downto 0); --input controls
      EX_cont:in std_logic_vector(8 downto 0);
      MEM_cont:in std_logic_vector(2 downto 0);
      WB_cont:in std_logic;

      rf_a1_control:in std_logic_vector(1 downto 0);--controls inside
      rf_a2_control:in std_logic_vector(1 downto 0);
      dest_m_control:in std_logic;
      im_m_control:in std_logic;
      invalidate:in std_logic;
      stall:in std_logic;

      rf_a1:out std_logic_vector(2 downto 0); --data outputs
      rf_a2: out std_logic_vector(2 downto 0);
      i2_pc_out:out unsigned(15 downto 0);
      imm9:out std_logic_vector(8 downto 0);
      --imm9:out std_logic_vector(8 downto 0);
      --zp:out std_logic_vector(8 downto 0);

      i2_opcode_out:out std_logic_vector(5 downto 0);
      dest_out:out std_logic_vector(2 downto 0);
      valid_out:out std_logic;

      OR_cont_out:out std_logic_vector(3 downto 0); --controls
      EX_cont_out:out std_logic_vector(8 downto 0);
      MEM_cont_out:out std_logic_vector(2 downto 0);
      WB_cont_out:out std_logic);
     --inter1reg_in : in std_logic_vector (32 downto 0);
     --inter1reg_out:out std_logic_vector(32 downto 0));
end entity;

architecture behave of i2reg is

--signal inter1reg:std_logic_vector(32 downto 0);
  signal rf_a1reg,rf_a2reg:std_logic_vector(2 downto 0);
  signal i2_pc_outreg:unsigned(15 downto 0);
  signal imm9reg:std_logic_vector(8 downto 0);
  signal i2_opcode_outreg:std_logic_vector(5 downto 0);
  signal dest_outreg:std_logic_vector(2 downto 0);
  signal valid_outreg:std_logic;
  signal OR_cont_outreg:std_logic_vector(3 downto 0);
  signal EX_cont_outreg:std_logic_vector(8 downto 0);
  signal MEM_cont_outreg:std_logic_vector(2 downto 0);
  signal WB_cont_outreg:std_logic;
begin
  process(clk,ir,pc_in,LMSM_penc,t_in,stall)
    begin
      if(rising_edge(clk) and stall='0') then
        if(rf_a1_control="01") then
          rf_a1reg<=ir(8 downto 6);
        elsif(rf_a1_control="10") then
          rf_a1reg<=ir(11 downto 9);
        elsif(rf_a1_control="11") then
          rf_a1reg<=ir(11 downto 9);
        elsif(rf_a1_control="00") then
          rf_a1reg<=(others=>'0');
        end if;

        if(rf_a2_control="10") then
          rf_a2reg<=ir(11 downto 9);
        elsif(rf_a2_control="01") then
          rf_a2reg<=ir(5 downto 3);
        elsif(rf_a2_control="11") then
          rf_a2reg<=LMSM_penc;
        elsif(rf_a2_control="00") then
          rf_a2reg<=ir(8 downto 6);
        end if;


        if(dest_m_control='1') then
          dest_outreg<=ir(11 downto 9);
        elsif(dest_m_control='0') then
          dest_outreg<=LMSM_penc;
        end if;

        if(im_m_control='1') then
          imm9reg<=t_in;
        elsif(im_m_control='0') then
          imm9reg<=ir(8 downto 0);
        end if;

        --imm9<=ir(8 downto 0);
        i2_pc_outreg<=pc_in;
        --zp<=ir(8 downto 0);

        i2_opcode_outreg(5 downto 2)<=ir(15 downto 12);
        i2_opcode_outreg(1 downto 0)<=ir(1 downto 0);

        OR_cont_outreg<=OR_cont;
        EX_cont_outreg<=EX_cont;
        MEM_cont_outreg<=MEM_cont;
        WB_cont_outreg<=WB_cont;

        if(invalidate='1' or stall='1') then
          valid_outreg<='0';
        else
          valid_outreg<=valid_in;
        end if;

      end if;
    end process;
    rf_a1<=rf_a1reg;
    rf_a2<=rf_a2reg;
    i2_pc_out<=i2_pc_outreg;
    imm9<=imm9reg;
    i2_opcode_out<=i2_opcode_outreg;
    dest_out<=dest_outreg;
    valid_out<=valid_outreg;
    OR_cont_out<=OR_cont_outreg;
    EX_cont_out<=EX_cont_outreg;
    MEM_cont_out<=MEM_cont_outreg;
    WB_cont_out<=WB_cont_outreg;

  --inter1reg_out <= inter1reg;
end behave;
