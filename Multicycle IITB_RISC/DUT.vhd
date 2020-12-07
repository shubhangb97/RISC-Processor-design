-- A DUT component is used to wrap your design.
--  This example shows how you can do this for the
--  two-bit adder.
library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DUT is
   port(clk, reset: in std_logic;
	reg:out unsigned(7 downto 0));
end entity;

architecture DutWrap of DUT is
--------------------------------------------------------------------------------------
--------------------------------Declare Components------------------------------------
--------------------------------------------------------------------------------------
component FSM is
port (clk, reset, nor_ir, alu_z, carry, zero: in std_logic;
	    ir : in std_logic_vector (15 downto 0);
      t1_in0, t1_in1, t2_in0, t2_in1: out std_logic;
      c_en, z_en, alu_op0, alu_op1, alu_a_in0, alu_a_in1, alu_b_in0, alu_b_in1 :out std_logic;
      rf_a1_in0, rf_a1_in1, rf_a2_in0, rf_a2_in1, rf_a3_in, rf_d3_in0, rf_d3_in1, rf_WR: out std_logic;
      mem_WR, mem_RD, mem_a_dest, pe_en, pc_out0, pc_out1, ir_0: out std_logic);
end component;

component ALU is
port(t1_ain,t2_ain,r7_ain,SE10_ain,SE7_ain: in unsigned(15 downto 0);
     clk,A1,A0,B1,B0,P1,P0,c_en,z_en:in std_logic;
     alu_out:out unsigned(15 downto 0);
     zero_out,carry_out:out std_logic;
	  alu_z:out std_logic);
end component;

component mem is
  port(t2,t1,r7:in unsigned(15 downto 0);
      clk, mem_RD, mem_WR,mem_a_control:in std_logic;
      mem_d_out:out std_logic_vector(15 downto 0));
end component;

component RegisterBank is
port(clk:in std_logic;
     ir:in std_logic_vector(15 downto 0);
     penc: in unsigned(2 downto 0);
     t1:in unsigned(15 downto 0);
     t2:in unsigned(15 downto 0);
     zp:in unsigned(15 downto 0);
     pc_alu_in:in unsigned(15 downto 0);
     a1_control: in std_logic_vector(1 downto 0);
     a2_control: in std_logic_vector(1 downto 0);
     a3_control:in std_logic;
     d3_control:in std_logic_vector(1 downto 0);
     pc_direct_control:in std_logic_vector(1 downto 0);  --can change this to  bit if you want
     input_control:in std_logic; --register bank enable
     pc_reset:in std_logic;      --we can have a reset bit extra easier to implement this way
     pc_direct_out:out unsigned(15 downto 0);
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

component instr_reg is
  port(clk:in std_logic;
       and_ir:in std_logic_vector(7 downto 0);
       mem_d:in std_logic_vector(15 downto 0);
       inp_control:in std_logic_vector(1 downto 0);
       ir_out:out std_logic_vector(15 downto 0));
end component;

component t2 is
port(clk:in std_logic;
    rf_d2:in unsigned(15 downto 0);
    mem_d:in std_logic_vector(15 downto 0);
    t2_in:in std_logic_vector(1 downto 0);
    t2_out:out unsigned(15 downto 0));
end component;

component t1 is
port(clk:in std_logic;
    rf_d1:in unsigned(15 downto 0);
    alu_out:in unsigned(15 downto 0);
    t1_in:in std_logic_vector(1 downto 0);
    t1_out:out unsigned(15 downto 0));
end component;

component SE7 is
port(ir:in std_logic_vector(15 downto 0);
     se7_out:out unsigned(15 downto 0));
end component;

component SE10 is
port(ir:in std_logic_vector(15 downto 0);
     se10_out:out unsigned(15 downto 0));
end component;

component zp is
port(ir:in std_logic_vector(15 downto 0);
     zp_out:out unsigned(15 downto 0));
end component;

component penc is
  port(ir:in std_logic_vector(15 downto 0);
       penc_control:in std_logic;
       penc_out:out unsigned(2 downto 0);
       decod_out:out std_logic_vector(7 downto 0);
       nor_ir:out std_logic);
end component;

component and_ir is
  port(ir_in: in std_logic_vector(15 downto 0);
       decod_out:in std_logic_vector(7 downto 0);
       and_ir_out:out std_logic_vector(7 downto 0));
end component;

--------------------------------------------------------------------------------------
---------------------------------Define Signals---------------------------------------
--------------------------------------------------------------------------------------
signal nor_ir, pe_en, ir_0 : std_logic;
signal ir: std_logic_vector(15 downto 0);
signal t1_in0, t1_in1, t1_out0, t1_out1, t2_in0, t2_in1, t2_out0, t2_out1: std_logic;

signal alu_z,alu_z1, alu_c, carry,zero, c_en, z_en, alu_op0, alu_op1: std_logic;
signal alu_a_in0, alu_a_in1, alu_b_in0, alu_b_in1 : std_logic;
signal rf_a1_in0, rf_a1_in1, rf_a2_in0, rf_a2_in1, rf_a3_in, rf_d3_in0, rf_d3_in1, rf_WR: std_logic;
signal mem_WR, mem_RD, mem_a_dest, pc_out0, pc_out1: std_logic;

signal rf_d1, rf_d2 : unsigned(15 downto 0);
signal alu_out : unsigned(15 downto 0);
signal t1_out, t2_out: unsigned(15 downto 0);
signal mem_d_out: std_logic_vector(15 downto 0);
signal penc_out: unsigned(2 downto 0);
signal decod_out: std_logic_vector(7 downto 0);
signal and_ir_out: std_logic_vector(7 downto 0);
signal outsig:unsigned(7 downto 0);
signal se7_out, se10_out, zp_out: unsigned(15 downto 0);
signal pc_direct_out, r0_out, r1_out,r2_out,r3_out,r4_out,r5_out,r6_out,r7_out: unsigned(15 downto 0);
begin

--a: StringRecognizer port map(input_vector(2), input_vector(3), input_vector(4), input_vector(5), input_vector(6), input_vector(1), input_vector(0), output_vector(0));
--a : StringRecognizer  port map(reset => input_vector(6),clk => input_vector(5),X4=> input_vector(4),X3=> input_vector(3), X2=>input_vector(2),X1 => input_vector(1),X0 => input_vector(0),W => output_vector(0));
process(t1_out,t2_out,alu_z1)
begin
if(t1_out=t2_out) then
alu_z1<='1';
else
alu_z1<='0';
end if;
end process;
a0: FSM port map(clk, reset, nor_ir, alu_z1, carry, zero, ir, t1_in0, t1_in1, t2_in0, t2_in1, c_en, z_en, alu_op0, alu_op1, alu_a_in0, alu_a_in1, alu_b_in0, alu_b_in1, rf_a1_in0, rf_a1_in1, rf_a2_in0, rf_a2_in1, rf_a3_in, rf_d3_in0, rf_d3_in1, rf_WR, mem_WR, mem_RD, mem_a_dest, pe_en, pc_out0, pc_out1, ir_0);
a1: ALU port map(t1_out, t2_out, pc_direct_out, se10_out, se7_out, clk, alu_a_in1, alu_a_in0, alu_b_in1, alu_b_in0, alu_op1 , alu_op0 , c_en, z_en, alu_out, zero, carry,alu_z);
a2: and_ir port map(ir, decod_out, and_ir_out);
a3: instr_reg port map(clk => clk, and_ir => and_ir_out, mem_d => mem_d_out, inp_control(1) => pe_en , inp_control(0) => ir_0 , ir_out => ir ); --Check
a4: mem port map(t2_out, t1_out, pc_direct_out, clk, mem_RD, mem_WR, mem_a_dest, mem_d_out  );
a5: penc port map(ir, pe_en, penc_out, decod_out, nor_ir);
a6: RegisterBank port map(clk => clk, ir => ir, penc => penc_out, t1 => t1_out, t2 => t2_out, zp => zp_out, pc_alu_in => alu_out, a1_control(1) => rf_a1_in1 , a1_control(0) => rf_a1_in0, a2_control(1) => rf_a2_in1 , a2_control(0) => rf_a2_in0, a3_control => rf_a3_in, d3_control(1) => rf_d3_in1 , d3_control(0) => rf_d3_in0, pc_direct_control(1) => pc_out1 , pc_direct_control(0) => pc_out0, input_control => rf_WR, pc_reset => reset,  pc_direct_out => pc_direct_out, rf_d1 => rf_d1, rf_d2 => rf_d2, r0_out => r0_out, r1_out=>r1_out, r2_out=>r2_out,r3_out=>r3_out,r4_out=>r4_out,r5_out=>r5_out,r6_out=>r6_out,r7_out=>r7_out);
a7: SE7 port map(ir, se7_out);
a8: SE10 port map(ir, se10_out);
a9: t1 port map(clk => clk, rf_d1 => rf_d1, alu_out => alu_out, t1_in(1) => t1_in1 , t1_in(0) => t1_in0 , t1_out => t1_out);
a10: t2 port map(clk => clk, rf_d2 => rf_d2, mem_d => mem_d_out, t2_in(1) => t2_in1 , t2_in(0) => t2_in0, t2_out => t2_out );
a11: zp port map(ir, zp_out);


a16:outsig<=r5_out(7 downto 0);
a15:reg<=outsig;

end DutWrap;
