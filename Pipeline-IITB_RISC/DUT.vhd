  library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DUT is
   port(clk, nreset: in std_logic;
	reg:out unsigned(7 downto 0));
end entity;

architecture behave of DUT is

---------------------------------------------------------------------------
-----------------------------Component Declarations------------------------
---------------------------------------------------------------------------

component inst_dec is
port(ir :in std_logic_vector(15 downto 0);
    -- clk: in std_logic;
	  ID_cont: out std_logic_vector(5 downto 0);
	  OR_cont: out std_logic_vector(3 downto 0);
	  EX_cont: out std_logic_vector(8 downto 0);
	  MEM_cont: out std_logic_vector(2 downto 0);
	  WB_cont: out std_logic);
end component;


component alu2 is
port(i3_alu_a,pc_in,se16,i3_alu_b: in unsigned(15 downto 0);
     clk,M2,M3,c_en,z_en,opr : in std_logic; -- 'valid' bit not kept heer, if want to put, do it here
	  alu2_out : out unsigned(15 downto 0);
	  zero_out,carry_out : out std_logic);
end component;


component beq_comp is
port(A,B: in unsigned (15 downto 0);
      BEQ_comp : in std_logic; --BEQ_comp is BEQ_enable
		beq_out : out std_logic);
end component;



component branch_null is
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
  end component;




component data_forward_control is
port(clk:in std_logic;
    rf_a1:in std_logic_vector(2 downto 0);--rf_a1 of i2
    rf_a2:in std_logic_vector(2 downto 0);
	 rf_d3_i3:in std_logic;  --d3 enable
    i3_zp_control:in std_logic;
    mem2_RD_i3:in std_logic;
    i3_valid:in std_logic;
    i3_dest:in std_logic_vector(2 downto 0);
    i4_dest:in std_logic_vector(2 downto 0);


    mem2_RD_i4:in std_logic;
    i4_valid:in std_logic;
    rf_d3_i4:in std_logic;

    i5_dest:in std_logic_vector(2 downto 0);
    rf_d3_i5:in std_logic;
	 i5_valid:in std_logic;

    N0:out std_logic;
    N1:out std_logic;
    N2:out std_logic;
    N3:out std_logic;
    N4:out std_logic;

    P0:out std_logic;
    P1:out std_logic;
    P2:out std_logic;
    P3:out std_logic;
    P4:out std_logic);
end component;


component i1reg is
port(clk:in std_logic;
  --   valid_out:out std_logic;
     stall:in std_logic;
    -- invalidate:in std_logic;
	  lmcont: in std_logic;
    nor_ir:in std_logic;
     inter1reg_in : in std_logic_vector (32 downto 0);
     inter1reg_out:out std_logic_vector(32 downto 0);
     and_ir:in std_logic_vector(7 downto 0));
end component;


component i2reg is
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
end component;


component i3reg is
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
end component;
--component i3reg is
--port(clk:in std_logic;
  --    --opcode_in:in std_logic_vector(6 downto 0);
    --  pc_in:in unsigned(15 downto 0);
    --  valid_in:in std_logic;
     -- opcode_in:in std_logic_vector(5 downto 0);

     -- i5_W2_in:in unsigned(15 downto 0);
    --  i4_W_in:in unsigned(15 downto 0);
 --     zp_out:in unsigned(15 downto 0);
 --     mem2_d1_out:in unsigned(15 downto 0);
 --     alu2_out:in unsigned(15 downto 0);
 --     rf_d1:in unsigned(15 downto 0);
 --     rf_d2:in unsigned(15 downto 0);

--      dest_in:in unsigned(15 downto 0);

--      se10_out:in unsigned(15 downto 0);
--      se7_out:in unsigned(15 downto 0);
 --     imm9_in:in unsigned(8 downto 0);

  --    --zp_i3_in:in std_logic_vector(8 downto 0);-- for the data

    --  EX_cont:in std_logic_vector(8 downto 0);--input controls
 --     MEM_cont:in std_logic_vector(2 downto 0);
 --     WB_cont:in std_logic;

  --    stall:in std_logic;
  --    invalidate:in std_logic;
 --     N0,N1,N2,N3,N4:in std_logic;--controls inside
 --     P0,P1,P2,P3,P4:in std_logic;
 --     se10_control:std_logic;
 --     se7_control:std_logic;

 --     A_out:out unsigned(15 downto 0);
 --     B_out:out unsigned(15 downto 0);
  --    i3_dest_out:std_logic_vector(2 downto 0);
  --    i3_pc_out:out unsigned(15 downto 0);
  --    se16:out unsigned(15 downto 0);
  --    zp_i3:out std_logic_vector(8 downto 0);

 --     i3_opcode_out:out std_logic_vector(5 downto 0);

       --controls
 --     EX_cont_out:out std_logic_vector(8 downto 0);
 --     MEM_cont_out:out std_logic_vector(2 downto 0);
 --     WB_cont_out:out std_logic;
 --     valid_out:out std_logic);
--end component;


component i4reg is
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
end component;


component i5reg is
port(mem2_d1,W_out: in unsigned(15 downto 0); --W_out is the i_W in the diagram
     dest_out: in std_logic_vector(2 downto 0);
	  i4_pc_out:in unsigned(15 downto 0);
	  i5_pc_out:out unsigned(15 downto 0);
     M5,WB_cont,i4_valid,clk: in std_logic;
	  i5_W2_out : out unsigned(15 downto 0);
	  i5_dest: out std_logic_vector(2 downto 0);
	  i5_valid,i5_WB: out std_logic);
end component;



component mem2 is
  port(mem2_d2_in,mem2_a:in unsigned(15 downto 0);
      clk, mem2_RD, mem2_WR,valid:in std_logic;
      mem2_d1_out:out unsigned(15 downto 0));-- r7 is pc
end component;



component SE7 is
  port(i2_imm9:in std_logic_vector(8 downto 0);
       se7_out:out unsigned(15 downto 0));
end component;



component SE10 is
  port(i2_imm9:in std_logic_vector(8 downto 0);
       se10_out:out unsigned(15 downto 0));
end component;



component stall_control is
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
end component;



component zp is
port(i3_zp_in:in std_logic_vector(8 downto 0);
     zp_out:out unsigned(15 downto 0));
end component;



component RegisterBank is
port(clk:in std_logic;
     rf_a1:in std_logic_vector(2 downto 0);
     rf_a2:in std_logic_vector(2 downto 0);
     rf_a3:in std_logic_vector(2 downto 0);
     pc_in:in unsigned(15 downto 0);-- needed to update r7
     rf_a1_control: in std_logic;
     rf_a2_control: in std_logic;
     rf_a3_control:in std_logic;
     valid:in std_logic;
     rf_d3:in unsigned(15 downto 0);
    --d3_control:in std_logic_vector(1 downto 0);
     reset:in std_logic;
     pc_direct_out:out unsigned(15 downto 0);
     --pc_cont:out:std_logic; --used to say that update pc
     rf_d1:out unsigned(15 downto 0);
     rf_d2:out unsigned(15 downto 0);
	  r0_out: out unsigned(15 downto 0);
		r1_out: out unsigned(15 downto 0);
		r2_out: out unsigned(15 downto 0);
		r3_out: out unsigned(15 downto 0);
		r4_out: out unsigned(15 downto 0);
		r5_out: out unsigned(15 downto 0);
		r6_out: out unsigned(15 downto 0);
		r7_out: out unsigned(15 downto 0));
end component;


component penc is
  port(clk:in std_logic;
       reset:in std_logic;--to reset t
       ir:in std_logic_vector(15 downto 0);
       penc_control:in std_logic;
       penc_out:out std_logic_vector(2 downto 0);
       decod_out:out std_logic_vector(7 downto 0);
       t:out std_logic_vector(8 downto 0);
       nor_ir:out std_logic);
end component;


component mem1 is
  port(pc_out:in unsigned(15 downto 0);
      --clk, mem_RD:in std_logic;
--mem_d_control:in std_logic;
      mem1_d_out:out std_logic_vector(15 downto 0));-- r7 is pc
end component;



component InstrFetch is
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
end component;


component and_ir is
  port(ir_in: in std_logic_vector(15 downto 0);
       decod_out:in std_logic_vector(7 downto 0);
       and_ir_out:out std_logic_vector(7 downto 0));
end component;


component PC is
port(clk:in std_logic;
     pc_in : in unsigned(15 downto 0);
     pc_out:out unsigned(15 downto 0);
     reset:std_logic);
end component;
-------------------------------------------------------------------------------
------------------------------Signals Declaratos------------------------------
-------------------------------------------------------------------------------
signal IR,mem1_d_out : std_logic_vector(15 downto 0);
signal pc_out,pc_in,alu2_out,pc_direct_out,pc_direct_out1,i3_alu_b,i2_pc_out,i5_W2_out,rf_d1,rf_d2,se7_out,se10_out,i4_W_out,i4_L_out,zp_out,mem2_d1_out : unsigned(15 downto 0);
signal i3_A_out,i3_B_out,i3_pc_out,i3_se16_out,i4_pc_out,i5_pc_out: unsigned(15 downto 0);
signal nor_ir,i2_valid_out,carry_out,zero_out,comp_out,i3_valid_out,i4_valid_out,i5_valid_out:std_logic;
signal inter1reg_in,i1_inter1reg:std_logic_vector(32 downto 0);
signal and_ir_out,decod_out:std_logic_vector(7 downto 0);
signal penc_out,rf_a1,rf_a2,i2_dest_out,i3_dest_out,i4_dest_out,i5_dest_out:std_logic_vector(2 downto 0);
signal i2_imm9,i3_zp_out:std_logic_vector(8 downto 0);
signal i2_opcode_out,i3_opcode_out:std_logic_vector(5 downto 0);
signal t:std_logic_vector(8 downto 0);
signal r0_out, r1_out,r2_out,r3_out,r4_out,r5_out,r6_out,r7_out: unsigned(15 downto 0);
--only for control signals

signal i1_ID_cont:std_logic_vector(5 downto 0);
signal i1_OR_cont,i2_OR_cont:std_logic_vector(3 downto 0);
signal i1_EX_cont,i2_EX_cont,i3_EX_cont:std_logic_vector(8 downto 0);
signal i1_MEM_cont,i2_MEM_cont,i3_MEM_cont,i4_MEM_cont:std_logic_vector(2 downto 0);
signal i1_WB_cont,i2_WB_cont,i3_WB_cont,i4_WB_cont,i5_WB_cont:std_logic;
signal N0,N1,N2,N3,N4,P0,P1,P2,P3,P4,if1,if2,invalidate,stall : std_logic;
signal reset:std_logic;

begin
--------------------------------------------------------------------------
-----------------------------Mapping--------------------------------------
--------------------------------------------------------------------------
IR <= i1_inter1reg(32 downto 17);
--IF Stage:
reset<=not(nreset);
a0 : mem1 port map(pc_out,mem1_d_out);
a1 : PC port map(clk,pc_in,pc_out,reset);
a2 : InstrFetch port map(mem1_d_out,alu2_out,pc_direct_out,i3_B_out,pc_out,stall,if1,if2,invalidate,i1_ID_cont(0),nor_ir,inter1reg_in,pc_in);
a3 : i1reg port map(clk,stall,i1_ID_cont(0),nor_ir,inter1reg_in,i1_inter1reg,and_ir_out);
a4 : and_ir port map(IR,decod_out,and_ir_out);

--ID Stage

a5: penc port map(clk,reset,IR,i1_ID_cont(0),penc_out,decod_out,t,nor_ir);--penc_control is i1_ID_cont(0)
a6: inst_dec port map(IR,i1_ID_cont,i1_OR_cont,i1_EX_cont,i1_MEM_cont,i1_WB_cont);
a7: i2reg port map (clk,i1_inter1reg(32 downto 17),unsigned(i1_inter1reg(16 downto 1)),i1_inter1reg(0),penc_out,t,i1_OR_cont,i1_EX_cont,i1_MEM_cont,i1_WB_cont,i1_ID_cont(5 downto 4),i1_ID_cont(3 downto 2),i1_ID_cont(1),i1_ID_cont(0),invalidate,stall,rf_a1,rf_a2,i2_pc_out,i2_imm9,i2_opcode_out,i2_dest_out,i2_valid_out,i2_OR_cont,i2_EX_cont,i2_MEM_cont,i2_WB_cont);
--i1_valid is i1_inter1reg(0)
--OR Stage

a8: RegisterBank port map(clk,rf_a1,rf_a2,i5_dest_out,i5_pc_out,i2_OR_cont(3),i2_OR_cont(2),i5_WB_cont,i5_valid_out,i5_W2_out,reset,pc_direct_out1,rf_d1,rf_d2,r0_out => r0_out, r1_out=>r1_out, r2_out=>r2_out,r3_out=>r3_out,r4_out=>r4_out,r5_out=>r5_out,r6_out=>r6_out,r7_out=>r7_out);
a9: SE7 port map(i2_imm9,se7_out);
a10: SE10 port map(i2_imm9,se10_out);
a11: i3reg port map(clk,i2_pc_out,i2_valid_out,i2_opcode_out,i2_dest_out,se10_out,se7_out,i2_imm9,i2_EX_cont,i2_MEM_cont,i2_WB_cont,i5_W2_out,i4_W_out,zp_out,mem2_d1_out,alu2_out,rf_d1,rf_d2,stall,invalidate,N0,N1,N2,N3,N4,P0,P1,P2,P3,P4,i2_OR_cont(1),i2_OR_cont(0),i3_A_out,i3_B_out,i3_dest_out,i3_pc_out,i3_se16_out,i3_zp_out,i3_opcode_out,i3_EX_cont,i3_MEM_cont,i3_WB_cont,i3_valid_out);

--E--EX stage

a12:alu2 port map(i3_A_out,i3_pc_out,i3_se16_out,i3_B_out,clk,i3_EX_cont(8),i3_EX_cont(7),i3_EX_cont(6),i3_EX_cont(5),i3_EX_cont(1),alu2_out,zero_out,carry_out);
a14:zp port map(i3_zp_out,zp_out);
a15:beq_comp port map(i3_A_out,i3_B_out,i3_EX_cont(2),comp_out);
a16:branch_null port map(clk,comp_out,i3_EX_cont(2),i3_EX_cont,i3_opcode_out,i3_valid_out,i3_dest_out,i3_WB_cont,if1,if2,invalidate);
--need to put branch null in components and project and update stall control too

a18:stall_control port map(clk,rf_a1,rf_a2,i3_WB_cont,i3_EX_cont(0),i3_MEM_cont(2),i3_valid_out,i3_dest_out,nor_ir,i1_ID_cont(0),stall);
a19:data_forward_control port map(clk,rf_a1,rf_a2,i3_WB_cont,i3_EX_cont(0),i3_MEM_cont(2),i3_valid_out,i3_dest_out,i4_dest_out,i4_MEM_cont(2),i4_valid_out,i4_WB_cont,i5_dest_out,i5_WB_cont,i5_valid_out,N0,N1,N2,N3,N4,P0,P1,P2,P3,P4);
a20:i4reg port map(clk,i3_opcode_out,carry_out,zero_out,i3_valid_out,stall,i3_MEM_cont,i3_WB_cont,i3_B_out,zp_out,alu2_out,i3_dest_out,i3_pc_out,i3_EX_cont(4 downto 3),comp_out,i4_MEM_cont,i4_WB_cont,i4_valid_out,i4_W_out,i4_L_out,i4_dest_out,i4_pc_out);

--MEM stage
a21:mem2 port map(i4_W_out,i4_L_out,clk,i4_MEM_cont(2),i4_MEM_cont(1),i4_valid_out,mem2_d1_out);
a22:i5reg port map(mem2_d1_out,i4_W_out,i4_dest_out,i4_pc_out,i5_pc_out,i4_MEM_cont(0),i4_WB_cont,i4_valid_out,clk,i5_W2_out,i5_dest_out,i5_valid_out,i5_WB_cont);
reg<=r6_out(7 downto 0);
pc_direct_out<=alu2_out;
end behave;
