library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity RegisterBank is
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

end entity;
architecture behaveReg of RegisterBank is
  type memReg is array	(0	to 7)	of
  unsigned(15	downto 0);
--signal RAM: memReg;  -- array(0 to 7) of unsigned(15 downto 0);
signal RAM: memReg := (0=>"0000000000000001",1=>"0000000000000011",2=>"0000000000001001",3=>"0000000000001110",others => (others =>'0'));  --SM test array(0 to 7) of unsigned(15 downto 0);
--signal RAM: memReg := (0=>"0000000000000011",1=>"0000000000000000",2=>"0000000000000111",3=>"0000000000000100",others => (others =>'0'));--jlr test
--signal RAM: memReg := (0=>"0000000000000101",1=>"0000000000000101",2=>"0000000000000111",3=>"0000000000000100",4=>"0000000000000000",5=>"0000000000001001",others => (others =>'0'));--beq test
--signal RAM: memReg := (others => (others =>'0'));  -- array(0 to 7) of unsigned(15 downto 0);
--signal RAM: memReg := (7=>"0000000000000000",others => (others =>'1'));


begin
  process(clk,rf_a1_control, rf_a2_control, rf_a3_control,reset,RAM,valid,rf_a1,rf_a2,rf_a3)
   --variable rf_a3: unsigned(2 downto 0);
  begin
    --giving d1

    if(rf_a1_control='1') then
    rf_d1 <= RAM(to_integer(unsigned(rf_a1)));
  else --if(rf_a1_control='0') then
    rf_d1 <= (others=>'0');
    end if;

--giving d2
    if(rf_a2_control='1') then
    rf_d2<= RAM(to_integer(unsigned(rf_a2)));
  else --if(rf_a2_control='0') then
    rf_d2 <= (others=>'0');
    end if;

--getting input and writing
if(rising_edge(clk)) then
--  if(reset='1') then
	--RAM<=(0=>"0000000000000101",1=>"0000000000000101",2=>"0000000000000111",3=>"0000000000000100",4=>"0000000000000000",5=>"0000000000001001",others => (others =>'0'));
  --end if;
  if((rf_a3_control='1' and valid='1') and rising_edge(clk)) then
    RAM(to_integer(unsigned(rf_a3)))<=rf_d3;
  --elsif(rf_a3_control='0' or valid='0') then
    --null;
    end if;
	 end if;

 --writing
--if(pc_direct_control="00")

  --  if(input_control='1') then
  --if(d3_control="10" and rising_edge(clk)) then-- change of control bits possible
  --  RAM(to_integer(rf_a3)) <= zp;
  --elsif(d3_control="01" and rising_edge(clk)) then
  --  RAM(to_integer(rf_a3)) <= t2;
  --elsif d3_control="00" and rising_edge(clk) then
  --  RAM(to_integer(rf_a3))<= t1;
  --elsif d3_control="11" and rising_edge(clk) then
  --  RAM(to_integer(rf_a3))<=RAM(to_integer("111"));
  --  end if;
  --end if;


--reading from pc and updating r
--if(rising_edge(clk)) then
--if(rf_a3="111" and (rf_a3_control='1' and valid='1')) then
  pc_direct_out<=RAM(7);
  --pc_cont='1'; --means write to pc

--elsif((valid='1')) then

  --pc_direct_out<=(others=>'0');
  --pc_cont<='0';
--else
  --pc_direct_out<=(others=>'0');
  --pc_cont<='0';
  --null;
--end if;
--end if;

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
