library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity i3reg is
port(clk:in std_logic;
      --opcode_in:in std_logic_vector(6 downto 0);
      pc_in:in unsigned(15 downto 0);
      valid_in:in std_logic;
      opcode_in:in std_logic_vector(5 downto 0);



      dest_in:in std_logic_vector(2 downto 0);

      --se16_in:in unsigned(15 downto 0);
		se10_out:in unsigned(15 downto 0);
      se7_out:in unsigned(15 downto 0);
      imm9_in:in std_logic_vector(8 downto 0);

      --zp_i3_in:in std_logic_vector(8 downto 0);-- for the data

      EX_cont:in std_logic_vector(8 downto 0);--input controls
      MEM_cont:in std_logic_vector(2 downto 0);
      WB_cont:in std_logic;

		i5_W2_in:in unsigned(15 downto 0);
i4_W_in:in unsigned(15 downto 0);
zp_out:in unsigned(15 downto 0);
mem2_d1_out:in unsigned(15 downto 0);
alu2_out:in unsigned(15 downto 0);
rf_d1:	in unsigned(15 downto 0);
rf_d2:in unsigned(15 downto 0);


      stall:in std_logic;
      invalidate:in std_logic;
      N0,N1,N2,N3,N4:in std_logic;--controls inside
      P0,P1,P2,P3,P4:in std_logic;

     ---d1_out:in unsigned(15 downto 0);
      --d2_out:in unsigned(15 downto 0);
      se10_control:in std_logic;
      se7_control:in std_logic;

      A_out:out unsigned(15 downto 0);
      B_out:out unsigned(15 downto 0);
      i3_d_out:out std_logic_vector(2 downto 0);
      i3_pc_out:out unsigned(15 downto 0);
      se16:out unsigned(15 downto 0);
      zp_i3:out std_logic_vector(8 downto 0);

      i3_opcode_out:out std_logic_vector(5 downto 0);

       --controls
      EX_cont_out:out std_logic_vector(8 downto 0);
      MEM_cont_out:out std_logic_vector(2 downto 0);
      WB_cont_out:out std_logic;--rf_d3
      valid_out:out std_logic);
     --inter1reg_in : in std_logic_vector (32 downto 0);
     --inter1reg_out:out std_logic_vector(32 downto 0));
end entity;

architecture behave of i3reg is

--signal inter1reg:std_logic_vector(32 downto 0);
signal A_outreg: unsigned(15 downto 0);
signal B_outreg: unsigned(15 downto 0);
signal i3_d_outreg: std_logic_vector(2 downto 0);
signal i3_pc_outreg: unsigned(15 downto 0);
signal se16reg: unsigned(15 downto 0);
signal zp_i3reg: std_logic_vector(8 downto 0);

signal i3_opcode_outreg: std_logic_vector(5 downto 0);

 --controls
signal EX_cont_outreg: std_logic_vector(8 downto 0);
signal MEM_cont_outreg: std_logic_vector(2 downto 0);
signal WB_cont_outreg: std_logic;--rf_d3
signal valid_outreg: std_logic;

begin
  process(clk,stall)
    begin
      if(rising_edge(clk)) then


--instead
--A_out<=d1_out;
        if(N0='1') then
          A_outreg<=alu2_out;
        elsif(N1='1') then
          A_outreg<=zp_out;
        elsif(N2='1') then
          A_outreg<=i4_W_in;
        elsif(N3='1')then
        A_outreg<=mem2_d1_out;
			elsif(N4='1') then
        A_outreg<=i5_W2_in;
			else
        A_outreg<=rf_d1;
        end if;


--instead
--B_out<=d2_out;
        if(P0='1') then
          B_outreg<=alu2_out;
        elsif(P1='1') then
          B_outreg<=zp_out;
        elsif(P2='1') then
          B_outreg<=i4_W_in;
        elsif(P3='1') then
        B_outreg<=mem2_d1_out;
      elsif(P4='1') then
        B_outreg<=i5_W2_in;
      else
       B_outreg<=rf_d2;
        end if;
			--se16<=se16_in;
        if(se10_control='1') then
          se16reg<=se10_out;
        elsif(se7_control='1') then
          se16reg<=se7_out;
        else
          se16reg<=(others=>'0');
        end if;


        zp_i3reg<=std_logic_vector(imm9_in);
        i3_d_outreg<=dest_in;



        i3_pc_outreg<=pc_in;

        i3_opcode_outreg<=opcode_in;

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

    A_out<=A_outreg;
    B_out<=B_outreg;
    i3_d_out<=i3_d_outreg;
    i3_pc_out<=i3_pc_outreg;
    se16<=se16reg;
    zp_i3<=zp_i3reg;

    i3_opcode_out<=i3_opcode_outreg;

     --controls
    EX_cont_out<=EX_cont_outreg;
    MEM_cont_out<=MEM_cont_outreg;
    WB_cont_out<=WB_cont_outreg;--rf_d3
    valid_out<=valid_outreg;

end behave;
