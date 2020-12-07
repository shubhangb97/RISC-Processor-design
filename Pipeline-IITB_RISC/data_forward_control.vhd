library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity data_forward_control is
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
    --N5:out std_logic);

  end entity;

  architecture behave of data_forward_control is

  --signal inter1reg:std_logic_vector(32 downto 0);

  begin
    process(rf_a1,rf_a2,rf_d3_i3)
      begin
      --if(rising_edge(clk)) then
        if( rf_a2=i3_dest and (rf_d3_i3='1' and i3_valid='1') and not(i3_zp_control='1') and not(mem2_RD_i3='1' and i3_valid='1')) then
          P0<='1';
        else
          P0<='0';
        end if;
        if(rf_a2=i3_dest and (rf_d3_i3='1' and i3_valid='1') and (i3_zp_control='1')) then
          P1<='1';
        else
          P1<='0';
        end if;
        if(rf_a2=i4_dest and (rf_d3_i4='1' and i4_valid='1') and not(mem2_RD_i4='1' and i4_valid='1')) then
          P2<='1';
        else
          P2<='0';
        end if;
        if(rf_a2=i4_dest and (rf_d3_i4='1' and i4_valid='1') and (mem2_RD_i4='1' and i4_valid='1')) then
          P3<='1';
        else
          P3<='0';
        end if;
        if(rf_a2=i5_dest and (rf_d3_i5='1' and i5_valid='1'))  then
            P4<='1';
        else
            P4<='0';
        end if;


        if(rf_a1=i3_dest and (rf_d3_i3='1' and i3_valid='1') and not(i3_zp_control='1') and not(mem2_RD_i3='1' and i3_valid='1')) then
          N0<='1';
        else
          N0<='0';
        end if;
        if(rf_a1=i3_dest and (rf_d3_i3='1' and i3_valid='1') and (i3_zp_control='1')) then
          N1<='1';
        else
          N1<='0';
        end if;
        if(rf_a1=i4_dest and (rf_d3_i4='1' and i4_valid='1') and not(mem2_RD_i4='1' and i4_valid='1')) then
          N2<='1';
        else
          N2<='0';
        end if;
        if(rf_a1=i4_dest and (rf_d3_i4='1' and i4_valid='1') and (mem2_RD_i4='1' and i4_valid='1')) then
          N3<='1';
        else
          N3<='0';
        end if;
        if(rf_a1=i5_dest and (rf_d3_i5='1' and i5_valid='1')) then
            N4<='1';
          else
            N4<='0';
        end if;

      --end if;
      end process;
  end behave;
