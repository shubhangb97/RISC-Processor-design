library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--entity inputMUX is --may not be used, I included it in registers itself
--port(ir6_8:in unsigned(2 downto 0);
--ir9_11: in unsigned(2 downto 0);
--ir3_5: in unsigned(2 downto 0);
--penc: in unsigned(2 downto 0);
 --t2:in unsigned(15 downto 0);
  --zp:in unsigned(15 downto 0);s

--  a1_control: in std_logic_vector(1 downto 0);
--  a2_control: in std_logic_vector(1 downto 0);
--  a3_control:in std_logic_vector(1 downto 0);
--  d3_control:in std_logic_vector(1 downto 0);

--  rf_a1:out unsigned(2 downto 0);
--  rf_a2:out unsigned(2 downto 0);
--  rf_a3:out unsigned(2 downto 0);
--  rf_d3:out unsigned(15 downto 0))
--  end entity;


entity RegisterBank is
port(clk:in std_logic;

--ir6_8:in unsigned(2 downto 0);
--ir9_11: in unsigned(2 downto 0);
--ir3_5: in unsigned(2 downto 0);
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
  --remove a bit from pc_direct control and add to reset if it is easy otherwise add a bit
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
r7_out: out unsigned(15 downto 0)
);
end entity;
architecture behaveReg of RegisterBank is
  type memReg is array	(0	to 7)	of unsigned(15	downto 0);
--signal RAM: memReg := (0=>"0000000000000011",1=>"0000000000000101",2=>"0000000000000111",3=>"0000000000001111",others => (others =>'0'));  --SM test array(0 to 7) of unsigned(15 downto 0);
--signal RAM: memReg := (0=>"0000000000000011",1=>"0000000000000000",2=>"0000000000000111",3=>"0000000000000100",others => (others =>'0'));--jlr test
signal RAM: memReg := (0=>"0000000000000101",1=>"0000000000000101",2=>"0000000000000111",3=>"0000000000000100",4=>"0000000000000000",5=>"0000000000001001",others => (others =>'0'));--beq test
--signal RAM: memReg := (others => (others =>'0'));  -- array(0 to 7) of unsigned(15 downto 0);
--signal RAM: memReg := (7=>"0000000000000000",others => (others =>'1'));
signal pc: unsigned(15 downto 0);
begin
  --process(clk,a1_control, a2_control, a3_control, d3_control,input_control,pc_reset) --change
  process(clk,a1_control, a2_control, a3_control, d3_control,input_control,pc_reset, RAM, ir, penc, pc_direct_control)
   variable rf_a3: unsigned(2 downto 0);
  begin
    --giving d1
    if(a1_control="01") then
    rf_d1 <= RAM(to_integer(unsigned(ir(8 downto 6))));
    elsif(a1_control="10") then
    rf_d1 <= RAM(to_integer(unsigned(ir(11 downto 9))));
    elsif(a1_control="00") then
    rf_d1<= (others=>'0');
    else
    --null; --change
    rf_d1<= (others=>'0'); --change
    end if;

--giving d2
    if(a2_control="00") then
    rf_d2<= (others=>'0');
  elsif(a2_control="01") then
    rf_d2 <= RAM(to_integer(unsigned(ir( 5 downto 3))));
  elsif(a2_control="10") then
    rf_d2<= RAM(to_integer(unsigned(ir(11 downto 9))));
    else
    rf_d2<=RAM(to_integer(penc));
    end if;

--getting input
  if(a3_control='0') then
    rf_a3 := unsigned(penc);
  elsif(a3_control='1') then
    rf_a3:=  unsigned(ir(11 downto 9));
  else --change
    rf_a3 := "000"; --change
    end if;

 --reseting pc here
 if(pc_reset='1') then  --remove this if else and only put the elsepart if you are implementing resetin some other way
 --RAM(to_integer("111"))<=(others=>'0'); --change
 pc<=(others=>'0');
 RAM(7)<=(others=>'0'); --change
else
  --writing
--if(pc_direct_control="00") then

    if(input_control='1') then
  if(d3_control="10" and rising_edge(clk)) then-- change of control bits possible
    RAM(to_integer(rf_a3)) <= zp;
    pc_direct_out<="0000000000000000";  --change To avoid latch infer
  elsif(d3_control="01" and rising_edge(clk)) then
    RAM(to_integer(rf_a3)) <= t2;
    pc_direct_out<="0000000000000000";  --change To avoid latch infer
  elsif d3_control="00" and rising_edge(clk) then
    RAM(to_integer(rf_a3))<= t1;
    pc_direct_out<="0000000000000000";  --change To avoid latch infer
  elsif d3_control="11" and rising_edge(clk) then
    --RAM(to_integer(rf_a3))<=RAM(to_integer("111")); --change
    RAM(to_integer(rf_a3))<=RAM(7); --change
    pc_direct_out<="0000000000000000";  --change To avoid latch infer
    end if;
  --end if;


--reading from pc
elsif(pc_direct_control="01") then
  --pc_direct_out<=RAM(to_integer("111")); --change
  pc_direct_out<=pc; --change
elsif(pc_direct_control(1)='1') then
  --pc_direct_out<=RAM(to_integer("111"));--change
  pc_direct_out<=pc; --change
else
--pc_direct_out<=RAM(to_integer("111"));--change
pc_direct_out<=pc; --change
end if;

--writing to pc
if(pc_direct_control="01" and rising_edge(clk)) then
  --RAM(to_integer("111"))<=t1;--change
  pc<=t1;--change
  RAM(7)<=t1;
elsif(pc_direct_control(1)='1' and rising_edge(clk)) then
  --RAM(to_integer("111"))<=pc_alu_in;--change
  pc<=pc_alu_in;--change
  RAM(7)<=pc_alu_in;
end if;

end if;--remove this to remove reset
if(rising_edge(clk)) then
RAM(7)<=pc;
end if;
end process;
r0_out <= RAM(0);
r1_out <= RAM(1);
r2_out <= RAM(2);
r3_out <= RAM(3);
r4_out <= RAM(4);
r5_out <= RAM(5);
r6_out <= RAM(6);
r7_out <= RAM(7);
end behaveReg;
