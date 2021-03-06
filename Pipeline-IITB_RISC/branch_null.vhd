library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity branch_null is
port(clk:in std_logic;--is in EX
    comp_out:in std_logic;
    BEQ_comp:std_logic;--BEQ_comp control
    i3_EX_cont:std_logic_vector(8 downto 0);
    i3_opcode_out:in std_logic_vector(5 downto 0);
  --  i3_zp_control:in std_logic;
  --  mem2_RD_i3:in std_logic;
    i3_valid:in std_logic;
    i3_dest_out:in std_logic_vector(2 downto 0);
    i3_rf_d3_cont:in std_logic;
  --  i3_dest:in std_logic_vector(2 downto 0);

    if1,if2:out std_logic;
    valid_cont:out std_logic);-- is the invalidate bit



  end entity;

  architecture behave of branch_null is

  --signal inter1reg:std_logic_vector(32 downto 0);

  begin
    process(clk,comp_out,BEQ_comp,i3_valid,i3_EX_cont,i3_opcode_out,i3_rf_d3_cont,i3_dest_out)
      begin
        --if(rising_edge(clk)) then
          if((comp_out='1' and BEQ_comp='1' and i3_valid='1') or (i3_EX_cont(4 downto 3)="10" and i3_valid='1')) then
            valid_cont<='1';  --1 means invalidate the bits
              if((comp_out='1' and BEQ_comp='1' and i3_valid='1') or (i3_opcode_out(5 downto 2)="1000" and i3_valid='1')) then
                if1<='0';
                if2<='1';
              elsif(i3_opcode_out(5 downto 2)="1001" and i3_valid='1') then
                if1<='1';
                if2<='0';

              else
                if1<='1';
                if2<='1';

              end if;
				  elsif(i3_dest_out="111" and i3_valid='1' and i3_rf_d3_cont='1') then
                if1<='0';
                if2<='0';
					 valid_cont<='1';

          else
				if1<='1';
                if2<='1';
            valid_cont<='0';
          end if;
        --end if;
      end process;
  end behave;
