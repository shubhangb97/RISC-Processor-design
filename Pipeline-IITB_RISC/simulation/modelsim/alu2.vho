-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"

-- DATE "12/02/2018 16:34:24"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DUT IS
    PORT (
	clk : IN std_logic;
	nreset : IN std_logic;
	reg : OUT IEEE.NUMERIC_STD.unsigned(7 DOWNTO 0)
	);
END DUT;

-- Design Ports Information
-- reg[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg[7]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nreset	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DUT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_nreset : std_logic;
SIGNAL ww_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL \a21|mem2_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \a21|mem2_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \a21|mem2_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \a21|mem2_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg[0]~output_o\ : std_logic;
SIGNAL \reg[1]~output_o\ : std_logic;
SIGNAL \reg[2]~output_o\ : std_logic;
SIGNAL \reg[3]~output_o\ : std_logic;
SIGNAL \reg[4]~output_o\ : std_logic;
SIGNAL \reg[5]~output_o\ : std_logic;
SIGNAL \reg[6]~output_o\ : std_logic;
SIGNAL \reg[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \a3|inter1reg~6_combout\ : std_logic;
SIGNAL \a7|dest_outreg~2_combout\ : std_logic;
SIGNAL \a3|inter1reg~11_combout\ : std_logic;
SIGNAL \a3|inter1reg~16_combout\ : std_logic;
SIGNAL \a3|inter1reg~12_combout\ : std_logic;
SIGNAL \a3|inter1reg~13_combout\ : std_logic;
SIGNAL \a3|inter1reg~14_combout\ : std_logic;
SIGNAL \a6|OR_cont[1]~0_combout\ : std_logic;
SIGNAL \a11|EX_cont_outreg[7]~0_combout\ : std_logic;
SIGNAL \a5|treg[0]~6_combout\ : std_logic;
SIGNAL \a5|treg[0]~7\ : std_logic;
SIGNAL \a5|treg[1]~8_combout\ : std_logic;
SIGNAL \a5|treg[1]~9\ : std_logic;
SIGNAL \a5|treg[2]~10_combout\ : std_logic;
SIGNAL \a7|imm9reg~2_combout\ : std_logic;
SIGNAL \a11|se16reg~2_combout\ : std_logic;
SIGNAL \a20|WB_contreg~q\ : std_logic;
SIGNAL \a7|i2_opcode_outreg[3]~feeder_combout\ : std_logic;
SIGNAL \a11|EX_cont_outreg[5]~1_combout\ : std_logic;
SIGNAL \a6|MEM_cont[0]~0_combout\ : std_logic;
SIGNAL \nreset~input_o\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \a20|W_outreg~5_combout\ : std_logic;
SIGNAL \a5|penc_out~0_combout\ : std_logic;
SIGNAL \a5|penc_out~1_combout\ : std_logic;
SIGNAL \a5|penc_out~2_combout\ : std_logic;
SIGNAL \a7|dest_outreg~5_combout\ : std_logic;
SIGNAL \a0|mem~4_combout\ : std_logic;
SIGNAL \a0|mem~5_combout\ : std_logic;
SIGNAL \a7|rf_a2reg~1_combout\ : std_logic;
SIGNAL \a11|B_outreg~4_combout\ : std_logic;
SIGNAL \a5|process_1~0_combout\ : std_logic;
SIGNAL \a7|dest_outreg~1_combout\ : std_logic;
SIGNAL \a7|dest_outreg[2]~feeder_combout\ : std_logic;
SIGNAL \a22|i5_validreg~q\ : std_logic;
SIGNAL \a22|i5_WBreg~q\ : std_logic;
SIGNAL \a7|rf_a2reg~0_combout\ : std_logic;
SIGNAL \a11|B_outreg~5_combout\ : std_logic;
SIGNAL \a11|B_outreg~6_combout\ : std_logic;
SIGNAL \a7|EX_cont_outreg[3]~0_combout\ : std_logic;
SIGNAL \a11|B_outreg~15_combout\ : std_logic;
SIGNAL \a11|B_outreg~134_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[23]~feeder_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \a21|mem2~46\ : std_logic;
SIGNAL \a20|MEM_contreg[1]~feeder_combout\ : std_logic;
SIGNAL \a21|process_0~0_combout\ : std_logic;
SIGNAL \a20|L_outreg[0]~feeder_combout\ : std_logic;
SIGNAL \a20|L_outreg[4]~feeder_combout\ : std_logic;
SIGNAL \a11|B_outreg[10]~10_combout\ : std_logic;
SIGNAL \a8|Decoder0~0_combout\ : std_logic;
SIGNAL \a8|RAM[6][1]~q\ : std_logic;
SIGNAL \a8|Decoder0~6_combout\ : std_logic;
SIGNAL \a8|RAM[4][1]~q\ : std_logic;
SIGNAL \a11|B_outreg~21_combout\ : std_logic;
SIGNAL \a8|Decoder0~5_combout\ : std_logic;
SIGNAL \a8|RAM[5][1]~q\ : std_logic;
SIGNAL \a11|B_outreg~22_combout\ : std_logic;
SIGNAL \a8|RAM[3][1]~4_combout\ : std_logic;
SIGNAL \a8|Decoder0~4_combout\ : std_logic;
SIGNAL \a8|RAM[3][1]~q\ : std_logic;
SIGNAL \a8|Decoder0~1_combout\ : std_logic;
SIGNAL \a8|RAM[2][1]~q\ : std_logic;
SIGNAL \a8|Decoder0~3_combout\ : std_logic;
SIGNAL \a8|RAM[0][1]~q\ : std_logic;
SIGNAL \a8|RAM[1][1]~3_combout\ : std_logic;
SIGNAL \a8|Decoder0~2_combout\ : std_logic;
SIGNAL \a8|RAM[1][1]~q\ : std_logic;
SIGNAL \a11|B_outreg~18_combout\ : std_logic;
SIGNAL \a11|B_outreg~19_combout\ : std_logic;
SIGNAL \a11|B_outreg[10]~7_combout\ : std_logic;
SIGNAL \a20|W_outreg~2_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[19]~feeder_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \a21|mem2~44\ : std_logic;
SIGNAL \a5|treg[2]~11\ : std_logic;
SIGNAL \a5|treg[3]~12_combout\ : std_logic;
SIGNAL \a5|treg[3]~13\ : std_logic;
SIGNAL \a5|treg[4]~14_combout\ : std_logic;
SIGNAL \a5|treg[4]~15\ : std_logic;
SIGNAL \a5|treg[5]~16_combout\ : std_logic;
SIGNAL \a7|imm9reg~5_combout\ : std_logic;
SIGNAL \a11|se16reg~5_combout\ : std_logic;
SIGNAL \a12|alu2_b[6]~6_combout\ : std_logic;
SIGNAL \a11|A_outreg[7]~10_combout\ : std_logic;
SIGNAL \a7|rf_a1reg~0_combout\ : std_logic;
SIGNAL \a7|rf_a1reg[1]~feeder_combout\ : std_logic;
SIGNAL \a11|A_outreg[7]~9_combout\ : std_logic;
SIGNAL \a11|A_outreg[7]~11_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[25]~1_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \a21|mem2~47\ : std_logic;
SIGNAL \a19|P2~combout\ : std_logic;
SIGNAL \a11|A_outreg[7]~12_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \a21|mem2~48\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[27]~feeder_combout\ : std_logic;
SIGNAL \a11|B_outreg~114_combout\ : std_logic;
SIGNAL \a11|B_outreg~73_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \a21|mem2~53\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[29]~feeder_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \a21|mem2~52\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[31]~feeder_combout\ : std_logic;
SIGNAL \a12|alu2_b[10]~11_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[33]~feeder_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \a21|mem2~51\ : std_logic;
SIGNAL \a11|B_outreg~91_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \a21|mem2~50\ : std_logic;
SIGNAL \a12|alu2_b[12]~9_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[38]~feeder_combout\ : std_logic;
SIGNAL \a12|alu2_b[13]~8_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[39]~feeder_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[41]~feeder_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[42]~feeder_combout\ : std_logic;
SIGNAL \a21|mem2~54\ : std_logic;
SIGNAL \a11|B_outreg~136_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[44]~feeder_combout\ : std_logic;
SIGNAL \a21|mem2~55\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[43]~feeder_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \a22|i5_W2_outreg[15]~15_combout\ : std_logic;
SIGNAL \a8|RAM[6][15]~q\ : std_logic;
SIGNAL \a8|RAM[4][15]~q\ : std_logic;
SIGNAL \a11|B_outreg~130_combout\ : std_logic;
SIGNAL \a8|Decoder0~7_combout\ : std_logic;
SIGNAL \a8|RAM[7][15]~q\ : std_logic;
SIGNAL \a8|RAM[5][15]~q\ : std_logic;
SIGNAL \a11|B_outreg~131_combout\ : std_logic;
SIGNAL \a8|RAM[3][15]~q\ : std_logic;
SIGNAL \a8|RAM[2][15]~q\ : std_logic;
SIGNAL \a8|RAM[0][15]~q\ : std_logic;
SIGNAL \a8|RAM[1][15]~q\ : std_logic;
SIGNAL \a11|B_outreg~128_combout\ : std_logic;
SIGNAL \a11|B_outreg~129_combout\ : std_logic;
SIGNAL \a11|B_outreg~132_combout\ : std_logic;
SIGNAL \a21|mem2_d1_out[15]~15_combout\ : std_logic;
SIGNAL \a11|B_outreg~133_combout\ : std_logic;
SIGNAL \a11|B_outreg~137_combout\ : std_logic;
SIGNAL \a12|alu2_b[15]~15_combout\ : std_logic;
SIGNAL \a11|A_outreg~120_combout\ : std_logic;
SIGNAL \a11|A_outreg~121_combout\ : std_logic;
SIGNAL \a11|A_outreg~117_combout\ : std_logic;
SIGNAL \a11|A_outreg~118_combout\ : std_logic;
SIGNAL \a11|A_outreg~119_combout\ : std_logic;
SIGNAL \a11|A_outreg~122_combout\ : std_logic;
SIGNAL \a11|A_outreg~123_combout\ : std_logic;
SIGNAL \a11|A_outreg~124_combout\ : std_logic;
SIGNAL \a12|alu2_b[14]~14_combout\ : std_logic;
SIGNAL \a8|RAM[7][11]~q\ : std_logic;
SIGNAL \a8|RAM[6][11]~q\ : std_logic;
SIGNAL \a8|RAM[4][11]~q\ : std_logic;
SIGNAL \a11|A_outreg~80_combout\ : std_logic;
SIGNAL \a11|A_outreg~81_combout\ : std_logic;
SIGNAL \a8|RAM[2][11]~q\ : std_logic;
SIGNAL \a8|RAM[3][11]~q\ : std_logic;
SIGNAL \a8|RAM[1][11]~q\ : std_logic;
SIGNAL \a8|RAM[0][11]~q\ : std_logic;
SIGNAL \a11|A_outreg~77_combout\ : std_logic;
SIGNAL \a11|A_outreg~78_combout\ : std_logic;
SIGNAL \a11|A_outreg~79_combout\ : std_logic;
SIGNAL \a21|mem2_d1_out[11]~10_combout\ : std_logic;
SIGNAL \a11|A_outreg~82_combout\ : std_logic;
SIGNAL \a11|A_outreg~83_combout\ : std_logic;
SIGNAL \a11|A_outreg~84_combout\ : std_logic;
SIGNAL \a12|alu2_b[9]~12_combout\ : std_logic;
SIGNAL \a8|RAM[3][8]~q\ : std_logic;
SIGNAL \a8|RAM[1][8]~q\ : std_logic;
SIGNAL \a8|RAM[0][8]~q\ : std_logic;
SIGNAL \a11|A_outreg~101_combout\ : std_logic;
SIGNAL \a8|RAM[2][8]~q\ : std_logic;
SIGNAL \a11|A_outreg~102_combout\ : std_logic;
SIGNAL \a8|RAM[7][8]~q\ : std_logic;
SIGNAL \a8|RAM[6][8]~q\ : std_logic;
SIGNAL \a8|RAM[4][8]~q\ : std_logic;
SIGNAL \a11|A_outreg~104_combout\ : std_logic;
SIGNAL \a11|A_outreg~105_combout\ : std_logic;
SIGNAL \a21|mem2_d1_out[8]~13_combout\ : std_logic;
SIGNAL \a11|A_outreg~103_combout\ : std_logic;
SIGNAL \a11|A_outreg~106_combout\ : std_logic;
SIGNAL \a11|A_outreg~107_combout\ : std_logic;
SIGNAL \a11|A_outreg~108_combout\ : std_logic;
SIGNAL \a12|alu2_b[7]~7_combout\ : std_logic;
SIGNAL \a8|RAM[7][5]~q\ : std_logic;
SIGNAL \a8|RAM[4][5]~q\ : std_logic;
SIGNAL \a8|RAM[6][5]~q\ : std_logic;
SIGNAL \a11|A_outreg~44_combout\ : std_logic;
SIGNAL \a11|A_outreg~45_combout\ : std_logic;
SIGNAL \a8|RAM[2][5]~q\ : std_logic;
SIGNAL \a8|RAM[3][5]~q\ : std_logic;
SIGNAL \a8|RAM[1][5]~q\ : std_logic;
SIGNAL \a8|RAM[0][5]~q\ : std_logic;
SIGNAL \a11|A_outreg~41_combout\ : std_logic;
SIGNAL \a11|A_outreg~42_combout\ : std_logic;
SIGNAL \a11|A_outreg~43_combout\ : std_logic;
SIGNAL \a21|mem2_d1_out[5]~5_combout\ : std_logic;
SIGNAL \a11|A_outreg~46_combout\ : std_logic;
SIGNAL \a11|A_outreg[5]~5_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[21]~feeder_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \a21|mem2~45\ : std_logic;
SIGNAL \a21|mem2_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \a22|i5_W2_outreg[4]~4_combout\ : std_logic;
SIGNAL \a8|RAM[0][4]~q\ : std_logic;
SIGNAL \a8|RAM[1][4]~q\ : std_logic;
SIGNAL \a11|B_outreg~42_combout\ : std_logic;
SIGNAL \a8|RAM[3][4]~q\ : std_logic;
SIGNAL \a8|RAM[2][4]~q\ : std_logic;
SIGNAL \a11|B_outreg~43_combout\ : std_logic;
SIGNAL \a11|B_outreg~44_combout\ : std_logic;
SIGNAL \a8|RAM[5][4]~q\ : std_logic;
SIGNAL \a8|RAM[7][4]~q\ : std_logic;
SIGNAL \a8|RAM[6][4]~q\ : std_logic;
SIGNAL \a8|RAM[4][4]~q\ : std_logic;
SIGNAL \a11|B_outreg~45_combout\ : std_logic;
SIGNAL \a11|B_outreg~46_combout\ : std_logic;
SIGNAL \a21|mem2_d1_out[4]~4_combout\ : std_logic;
SIGNAL \a11|B_outreg~47_combout\ : std_logic;
SIGNAL \a11|B_outreg~48_combout\ : std_logic;
SIGNAL \a11|B_outreg~49_combout\ : std_logic;
SIGNAL \a7|imm9reg~4_combout\ : std_logic;
SIGNAL \a11|se16reg~4_combout\ : std_logic;
SIGNAL \a12|alu2_b[4]~4_combout\ : std_logic;
SIGNAL \a7|imm9reg~3_combout\ : std_logic;
SIGNAL \a11|se16reg~3_combout\ : std_logic;
SIGNAL \a12|alu2_b[3]~3_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[17]~0_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \a21|mem2~43\ : std_logic;
SIGNAL \a21|mem2_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \a22|i5_W2_outreg[2]~2_combout\ : std_logic;
SIGNAL \a8|RAM[2][2]~q\ : std_logic;
SIGNAL \a8|RAM[3][2]~5_combout\ : std_logic;
SIGNAL \a8|RAM[3][2]~q\ : std_logic;
SIGNAL \a8|RAM[0][2]~q\ : std_logic;
SIGNAL \a8|RAM[1][2]~q\ : std_logic;
SIGNAL \a11|A_outreg~23_combout\ : std_logic;
SIGNAL \a11|A_outreg~24_combout\ : std_logic;
SIGNAL \a8|RAM[4][2]~q\ : std_logic;
SIGNAL \a8|RAM[6][2]~q\ : std_logic;
SIGNAL \a11|A_outreg~26_combout\ : std_logic;
SIGNAL \a8|RAM[5][2]~q\ : std_logic;
SIGNAL \a8|RAM[7][2]~q\ : std_logic;
SIGNAL \a11|A_outreg~27_combout\ : std_logic;
SIGNAL \a21|mem2_d1_out[2]~2_combout\ : std_logic;
SIGNAL \a11|A_outreg~25_combout\ : std_logic;
SIGNAL \a11|A_outreg~28_combout\ : std_logic;
SIGNAL \a11|A_outreg[2]~2_combout\ : std_logic;
SIGNAL \a7|imm9reg~1_combout\ : std_logic;
SIGNAL \a11|se16reg~1_combout\ : std_logic;
SIGNAL \a12|alu2_b[1]~1_combout\ : std_logic;
SIGNAL \a7|imm9reg~0_combout\ : std_logic;
SIGNAL \a11|se16reg~0_combout\ : std_logic;
SIGNAL \a12|alu2_b[0]~0_combout\ : std_logic;
SIGNAL \a12|Add0~1\ : std_logic;
SIGNAL \a12|Add0~3\ : std_logic;
SIGNAL \a12|Add0~5\ : std_logic;
SIGNAL \a12|Add0~7\ : std_logic;
SIGNAL \a12|Add0~9\ : std_logic;
SIGNAL \a12|Add0~11\ : std_logic;
SIGNAL \a12|Add0~13\ : std_logic;
SIGNAL \a12|Add0~15\ : std_logic;
SIGNAL \a12|Add0~17\ : std_logic;
SIGNAL \a12|Add0~19\ : std_logic;
SIGNAL \a12|Add0~21\ : std_logic;
SIGNAL \a12|Add0~23\ : std_logic;
SIGNAL \a12|Add0~25\ : std_logic;
SIGNAL \a12|Add0~27\ : std_logic;
SIGNAL \a12|Add0~29\ : std_logic;
SIGNAL \a12|Add0~30_combout\ : std_logic;
SIGNAL \a20|W_outreg~15_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \a22|i5_W2_outreg[14]~14_combout\ : std_logic;
SIGNAL \a8|RAM[0][14]~q\ : std_logic;
SIGNAL \a8|RAM[1][14]~q\ : std_logic;
SIGNAL \a11|B_outreg~122_combout\ : std_logic;
SIGNAL \a8|RAM[2][14]~q\ : std_logic;
SIGNAL \a8|RAM[3][14]~q\ : std_logic;
SIGNAL \a11|B_outreg~123_combout\ : std_logic;
SIGNAL \a8|RAM[5][14]~q\ : std_logic;
SIGNAL \a8|RAM[7][14]~q\ : std_logic;
SIGNAL \a8|RAM[6][14]~q\ : std_logic;
SIGNAL \a8|RAM[4][14]~q\ : std_logic;
SIGNAL \a11|B_outreg~124_combout\ : std_logic;
SIGNAL \a11|B_outreg~125_combout\ : std_logic;
SIGNAL \a11|B_outreg~126_combout\ : std_logic;
SIGNAL \a21|mem2_d1_out[14]~14_combout\ : std_logic;
SIGNAL \a11|B_outreg~127_combout\ : std_logic;
SIGNAL \a11|B_outreg~138_combout\ : std_logic;
SIGNAL \a11|B_outreg~139_combout\ : std_logic;
SIGNAL \a20|W_outreg~14_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[40]~feeder_combout\ : std_logic;
SIGNAL \a21|mem2~49\ : std_logic;
SIGNAL \a22|i5_W2_outreg[13]~13_combout\ : std_logic;
SIGNAL \a8|RAM[2][13]~q\ : std_logic;
SIGNAL \a8|RAM[1][13]~q\ : std_logic;
SIGNAL \a8|RAM[0][13]~q\ : std_logic;
SIGNAL \a11|A_outreg~61_combout\ : std_logic;
SIGNAL \a8|RAM[3][13]~q\ : std_logic;
SIGNAL \a11|A_outreg~62_combout\ : std_logic;
SIGNAL \a11|A_outreg~63_combout\ : std_logic;
SIGNAL \a8|RAM[6][13]~q\ : std_logic;
SIGNAL \a8|RAM[4][13]~q\ : std_logic;
SIGNAL \a11|A_outreg~64_combout\ : std_logic;
SIGNAL \a8|RAM[5][13]~q\ : std_logic;
SIGNAL \a8|RAM[7][13]~q\ : std_logic;
SIGNAL \a11|A_outreg~65_combout\ : std_logic;
SIGNAL \a21|mem2_d1_out[13]~8_combout\ : std_logic;
SIGNAL \a11|A_outreg~66_combout\ : std_logic;
SIGNAL \a11|A_outreg~67_combout\ : std_logic;
SIGNAL \a11|A_outreg~68_combout\ : std_logic;
SIGNAL \a12|Add0~26_combout\ : std_logic;
SIGNAL \a11|B_outreg~75_combout\ : std_logic;
SIGNAL \a11|B_outreg~79_combout\ : std_logic;
SIGNAL \a11|B_outreg~80_combout\ : std_logic;
SIGNAL \a11|B_outreg~81_combout\ : std_logic;
SIGNAL \a11|B_outreg~76_combout\ : std_logic;
SIGNAL \a11|B_outreg~77_combout\ : std_logic;
SIGNAL \a11|B_outreg~78_combout\ : std_logic;
SIGNAL \a11|B_outreg~82_combout\ : std_logic;
SIGNAL \a11|B_outreg~83_combout\ : std_logic;
SIGNAL \a11|B_outreg~84_combout\ : std_logic;
SIGNAL \a20|W_outreg~8_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \a22|i5_W2_outreg[12]~12_combout\ : std_logic;
SIGNAL \a22|i5_W2_outreg[12]~feeder_combout\ : std_logic;
SIGNAL \a8|RAM[0][12]~q\ : std_logic;
SIGNAL \a8|RAM[1][12]~q\ : std_logic;
SIGNAL \a11|A_outreg~69_combout\ : std_logic;
SIGNAL \a8|RAM[3][12]~q\ : std_logic;
SIGNAL \a8|RAM[2][12]~q\ : std_logic;
SIGNAL \a11|A_outreg~70_combout\ : std_logic;
SIGNAL \a8|RAM[7][12]~q\ : std_logic;
SIGNAL \a8|RAM[5][12]~q\ : std_logic;
SIGNAL \a8|RAM[6][12]~q\ : std_logic;
SIGNAL \a8|RAM[4][12]~q\ : std_logic;
SIGNAL \a11|A_outreg~72_combout\ : std_logic;
SIGNAL \a11|A_outreg~73_combout\ : std_logic;
SIGNAL \a21|mem2_d1_out[12]~9_combout\ : std_logic;
SIGNAL \a11|A_outreg~71_combout\ : std_logic;
SIGNAL \a11|A_outreg~74_combout\ : std_logic;
SIGNAL \a11|A_outreg~75_combout\ : std_logic;
SIGNAL \a11|A_outreg~76_combout\ : std_logic;
SIGNAL \a12|Add0~24_combout\ : std_logic;
SIGNAL \a11|B_outreg~142_combout\ : std_logic;
SIGNAL \a11|B_outreg~85_combout\ : std_logic;
SIGNAL \a11|B_outreg~86_combout\ : std_logic;
SIGNAL \a11|B_outreg~87_combout\ : std_logic;
SIGNAL \a11|B_outreg~88_combout\ : std_logic;
SIGNAL \a11|B_outreg~89_combout\ : std_logic;
SIGNAL \a11|B_outreg~90_combout\ : std_logic;
SIGNAL \a11|B_outreg~143_combout\ : std_logic;
SIGNAL \a20|W_outreg~9_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[35]~feeder_combout\ : std_logic;
SIGNAL \a22|i5_W2_outreg[11]~11_combout\ : std_logic;
SIGNAL \a8|RAM[5][11]~q\ : std_logic;
SIGNAL \a11|B_outreg~92_combout\ : std_logic;
SIGNAL \a11|B_outreg~93_combout\ : std_logic;
SIGNAL \a11|B_outreg~95_combout\ : std_logic;
SIGNAL \a11|B_outreg~96_combout\ : std_logic;
SIGNAL \a11|B_outreg~97_combout\ : std_logic;
SIGNAL \a11|B_outreg~94_combout\ : std_logic;
SIGNAL \a11|B_outreg~98_combout\ : std_logic;
SIGNAL \a11|B_outreg~99_combout\ : std_logic;
SIGNAL \a12|alu2_b[11]~10_combout\ : std_logic;
SIGNAL \a12|Add0~22_combout\ : std_logic;
SIGNAL \a20|W_outreg~10_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \a22|i5_W2_outreg[10]~10_combout\ : std_logic;
SIGNAL \a8|RAM[1][10]~q\ : std_logic;
SIGNAL \a8|RAM[0][10]~q\ : std_logic;
SIGNAL \a11|A_outreg~85_combout\ : std_logic;
SIGNAL \a8|RAM[2][10]~q\ : std_logic;
SIGNAL \a8|RAM[3][10]~q\ : std_logic;
SIGNAL \a11|A_outreg~86_combout\ : std_logic;
SIGNAL \a8|RAM[7][10]~q\ : std_logic;
SIGNAL \a8|RAM[6][10]~q\ : std_logic;
SIGNAL \a8|RAM[4][10]~q\ : std_logic;
SIGNAL \a11|A_outreg~88_combout\ : std_logic;
SIGNAL \a8|RAM[5][10]~q\ : std_logic;
SIGNAL \a11|A_outreg~89_combout\ : std_logic;
SIGNAL \a21|mem2_d1_out[10]~11_combout\ : std_logic;
SIGNAL \a11|A_outreg~87_combout\ : std_logic;
SIGNAL \a11|A_outreg~90_combout\ : std_logic;
SIGNAL \a11|A_outreg~91_combout\ : std_logic;
SIGNAL \a11|A_outreg~92_combout\ : std_logic;
SIGNAL \a12|Add0~20_combout\ : std_logic;
SIGNAL \a11|B_outreg~140_combout\ : std_logic;
SIGNAL \a11|B_outreg~102_combout\ : std_logic;
SIGNAL \a11|B_outreg~103_combout\ : std_logic;
SIGNAL \a11|B_outreg~104_combout\ : std_logic;
SIGNAL \a11|B_outreg~100_combout\ : std_logic;
SIGNAL \a11|B_outreg~101_combout\ : std_logic;
SIGNAL \a11|B_outreg~105_combout\ : std_logic;
SIGNAL \a11|B_outreg~141_combout\ : std_logic;
SIGNAL \a20|W_outreg~11_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \a22|i5_W2_outreg[9]~9_combout\ : std_logic;
SIGNAL \a8|RAM[7][9]~q\ : std_logic;
SIGNAL \a8|RAM[5][9]~q\ : std_logic;
SIGNAL \a8|RAM[6][9]~q\ : std_logic;
SIGNAL \a8|RAM[4][9]~q\ : std_logic;
SIGNAL \a11|A_outreg~96_combout\ : std_logic;
SIGNAL \a11|A_outreg~97_combout\ : std_logic;
SIGNAL \a8|RAM[2][9]~q\ : std_logic;
SIGNAL \a8|RAM[3][9]~q\ : std_logic;
SIGNAL \a8|RAM[0][9]~feeder_combout\ : std_logic;
SIGNAL \a8|RAM[0][9]~q\ : std_logic;
SIGNAL \a8|RAM[1][9]~feeder_combout\ : std_logic;
SIGNAL \a8|RAM[1][9]~q\ : std_logic;
SIGNAL \a11|A_outreg~93_combout\ : std_logic;
SIGNAL \a11|A_outreg~94_combout\ : std_logic;
SIGNAL \a11|A_outreg~95_combout\ : std_logic;
SIGNAL \a21|mem2_d1_out[9]~12_combout\ : std_logic;
SIGNAL \a11|A_outreg~98_combout\ : std_logic;
SIGNAL \a11|A_outreg~99_combout\ : std_logic;
SIGNAL \a11|A_outreg~100_combout\ : std_logic;
SIGNAL \a12|Add0~18_combout\ : std_logic;
SIGNAL \a11|B_outreg~106_combout\ : std_logic;
SIGNAL \a11|B_outreg~110_combout\ : std_logic;
SIGNAL \a11|B_outreg~111_combout\ : std_logic;
SIGNAL \a11|B_outreg~107_combout\ : std_logic;
SIGNAL \a11|B_outreg~108_combout\ : std_logic;
SIGNAL \a11|B_outreg~109_combout\ : std_logic;
SIGNAL \a11|B_outreg~112_combout\ : std_logic;
SIGNAL \a11|B_outreg~113_combout\ : std_logic;
SIGNAL \a20|W_outreg~12_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \a22|i5_W2_outreg[8]~8_combout\ : std_logic;
SIGNAL \a8|RAM[5][8]~q\ : std_logic;
SIGNAL \a11|B_outreg~118_combout\ : std_logic;
SIGNAL \a11|B_outreg~119_combout\ : std_logic;
SIGNAL \a11|B_outreg~115_combout\ : std_logic;
SIGNAL \a11|B_outreg~116_combout\ : std_logic;
SIGNAL \a11|B_outreg~117_combout\ : std_logic;
SIGNAL \a11|B_outreg~120_combout\ : std_logic;
SIGNAL \a11|B_outreg~121_combout\ : std_logic;
SIGNAL \a12|alu2_b[8]~13_combout\ : std_logic;
SIGNAL \a12|Add0~16_combout\ : std_logic;
SIGNAL \a20|W_outreg~13_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \a22|i5_W2_outreg[7]~7_combout\ : std_logic;
SIGNAL \a8|RAM[7][7]~q\ : std_logic;
SIGNAL \a8|RAM[5][7]~q\ : std_logic;
SIGNAL \a8|RAM[4][7]~q\ : std_logic;
SIGNAL \a8|RAM[6][7]~q\ : std_logic;
SIGNAL \a11|A_outreg~56_combout\ : std_logic;
SIGNAL \a11|A_outreg~57_combout\ : std_logic;
SIGNAL \a8|RAM[2][7]~q\ : std_logic;
SIGNAL \a8|RAM[3][7]~q\ : std_logic;
SIGNAL \a8|RAM[1][7]~q\ : std_logic;
SIGNAL \a8|RAM[0][7]~q\ : std_logic;
SIGNAL \a11|A_outreg~53_combout\ : std_logic;
SIGNAL \a11|A_outreg~54_combout\ : std_logic;
SIGNAL \a11|A_outreg~55_combout\ : std_logic;
SIGNAL \a21|mem2_d1_out[7]~7_combout\ : std_logic;
SIGNAL \a11|A_outreg~58_combout\ : std_logic;
SIGNAL \a11|A_outreg~59_combout\ : std_logic;
SIGNAL \a11|A_outreg~60_combout\ : std_logic;
SIGNAL \a12|Add0~14_combout\ : std_logic;
SIGNAL \a11|B_outreg~66_combout\ : std_logic;
SIGNAL \a11|B_outreg~70_combout\ : std_logic;
SIGNAL \a11|B_outreg~71_combout\ : std_logic;
SIGNAL \a11|B_outreg~67_combout\ : std_logic;
SIGNAL \a11|B_outreg~68_combout\ : std_logic;
SIGNAL \a11|B_outreg~69_combout\ : std_logic;
SIGNAL \a11|B_outreg~72_combout\ : std_logic;
SIGNAL \a11|B_outreg~74_combout\ : std_logic;
SIGNAL \a20|W_outreg~7_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \a22|i5_W2_outreg[6]~6_combout\ : std_logic;
SIGNAL \a8|RAM[7][6]~q\ : std_logic;
SIGNAL \a8|RAM[5][6]~q\ : std_logic;
SIGNAL \a8|RAM[4][6]~q\ : std_logic;
SIGNAL \a8|RAM[6][6]~q\ : std_logic;
SIGNAL \a11|A_outreg~50_combout\ : std_logic;
SIGNAL \a11|A_outreg~51_combout\ : std_logic;
SIGNAL \a8|RAM[3][6]~q\ : std_logic;
SIGNAL \a8|RAM[2][6]~q\ : std_logic;
SIGNAL \a8|RAM[0][6]~q\ : std_logic;
SIGNAL \a8|RAM[1][6]~q\ : std_logic;
SIGNAL \a11|A_outreg~47_combout\ : std_logic;
SIGNAL \a11|A_outreg~48_combout\ : std_logic;
SIGNAL \a21|mem2_d1_out[6]~6_combout\ : std_logic;
SIGNAL \a11|A_outreg~49_combout\ : std_logic;
SIGNAL \a11|A_outreg~52_combout\ : std_logic;
SIGNAL \a11|A_outreg[6]~6_combout\ : std_logic;
SIGNAL \a12|Add0~12_combout\ : std_logic;
SIGNAL \a11|B_outreg~61_combout\ : std_logic;
SIGNAL \a11|B_outreg~62_combout\ : std_logic;
SIGNAL \a11|B_outreg~58_combout\ : std_logic;
SIGNAL \a11|B_outreg~59_combout\ : std_logic;
SIGNAL \a11|B_outreg~60_combout\ : std_logic;
SIGNAL \a11|B_outreg~63_combout\ : std_logic;
SIGNAL \a11|B_outreg~64_combout\ : std_logic;
SIGNAL \a11|B_outreg~65_combout\ : std_logic;
SIGNAL \a20|W_outreg~6_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \a22|i5_W2_outreg[3]~3_combout\ : std_logic;
SIGNAL \a8|RAM[2][3]~6_combout\ : std_logic;
SIGNAL \a8|RAM[2][3]~q\ : std_logic;
SIGNAL \a8|RAM[1][3]~q\ : std_logic;
SIGNAL \a8|RAM[0][3]~q\ : std_logic;
SIGNAL \a11|B_outreg~34_combout\ : std_logic;
SIGNAL \a8|RAM[3][3]~7_combout\ : std_logic;
SIGNAL \a8|RAM[3][3]~q\ : std_logic;
SIGNAL \a11|B_outreg~35_combout\ : std_logic;
SIGNAL \a8|RAM[6][3]~q\ : std_logic;
SIGNAL \a8|RAM[4][3]~q\ : std_logic;
SIGNAL \a11|B_outreg~37_combout\ : std_logic;
SIGNAL \a8|RAM[5][3]~q\ : std_logic;
SIGNAL \a8|RAM[7][3]~q\ : std_logic;
SIGNAL \a11|B_outreg~38_combout\ : std_logic;
SIGNAL \a21|mem2_d1_out[3]~3_combout\ : std_logic;
SIGNAL \a11|B_outreg~36_combout\ : std_logic;
SIGNAL \a11|B_outreg~39_combout\ : std_logic;
SIGNAL \a11|B_outreg~40_combout\ : std_logic;
SIGNAL \a11|B_outreg~41_combout\ : std_logic;
SIGNAL \a20|W_outreg~3_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \a21|mem2_d1_out[1]~1_combout\ : std_logic;
SIGNAL \a11|B_outreg~20_combout\ : std_logic;
SIGNAL \a11|B_outreg~23_combout\ : std_logic;
SIGNAL \a11|B_outreg~24_combout\ : std_logic;
SIGNAL \a11|B_outreg~25_combout\ : std_logic;
SIGNAL \a20|W_outreg~1_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \a22|i5_W2_outreg[5]~5_combout\ : std_logic;
SIGNAL \a8|RAM[5][5]~q\ : std_logic;
SIGNAL \a11|B_outreg~53_combout\ : std_logic;
SIGNAL \a11|B_outreg~54_combout\ : std_logic;
SIGNAL \a11|B_outreg~50_combout\ : std_logic;
SIGNAL \a11|B_outreg~51_combout\ : std_logic;
SIGNAL \a11|B_outreg~52_combout\ : std_logic;
SIGNAL \a11|B_outreg~55_combout\ : std_logic;
SIGNAL \a11|B_outreg~56_combout\ : std_logic;
SIGNAL \a11|B_outreg~57_combout\ : std_logic;
SIGNAL \a12|alu2_b[5]~5_combout\ : std_logic;
SIGNAL \a12|Add0~10_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \a21|mem2~25_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[2]~feeder_combout\ : std_logic;
SIGNAL \a21|mem2~23_combout\ : std_logic;
SIGNAL \a21|mem2~27_combout\ : std_logic;
SIGNAL \a21|mem2~combout\ : std_logic;
SIGNAL \a22|i5_W2_outreg[1]~1_combout\ : std_logic;
SIGNAL \a8|RAM[7][1]~q\ : std_logic;
SIGNAL \a11|A_outreg~20_combout\ : std_logic;
SIGNAL \a11|A_outreg~21_combout\ : std_logic;
SIGNAL \a11|A_outreg~17_combout\ : std_logic;
SIGNAL \a11|A_outreg~18_combout\ : std_logic;
SIGNAL \a11|A_outreg~19_combout\ : std_logic;
SIGNAL \a11|A_outreg~22_combout\ : std_logic;
SIGNAL \a11|A_outreg[1]~1_combout\ : std_logic;
SIGNAL \a12|Add0~2_combout\ : std_logic;
SIGNAL \a0|mem~6_combout\ : std_logic;
SIGNAL \a0|mem~7_combout\ : std_logic;
SIGNAL \a7|rf_a1reg~2_combout\ : std_logic;
SIGNAL \a19|N0~2_combout\ : std_logic;
SIGNAL \a19|N0~3_combout\ : std_logic;
SIGNAL \a19|N0~4_combout\ : std_logic;
SIGNAL \a11|A_outreg~109_combout\ : std_logic;
SIGNAL \a11|A_outreg~110_combout\ : std_logic;
SIGNAL \a11|A_outreg~112_combout\ : std_logic;
SIGNAL \a11|A_outreg~113_combout\ : std_logic;
SIGNAL \a11|A_outreg~111_combout\ : std_logic;
SIGNAL \a11|A_outreg~114_combout\ : std_logic;
SIGNAL \a11|A_outreg~115_combout\ : std_logic;
SIGNAL \a11|A_outreg~116_combout\ : std_logic;
SIGNAL \a12|Add0~28_combout\ : std_logic;
SIGNAL \a12|Equal0~0_combout\ : std_logic;
SIGNAL \a12|Equal0~1_combout\ : std_logic;
SIGNAL \a12|Equal0~2_combout\ : std_logic;
SIGNAL \a12|Equal0~3_combout\ : std_logic;
SIGNAL \a12|Equal0~4_combout\ : std_logic;
SIGNAL \a12|zero~q\ : std_logic;
SIGNAL \a7|i2_opcode_outreg[1]~feeder_combout\ : std_logic;
SIGNAL \a12|Add0~31\ : std_logic;
SIGNAL \a12|Add0~32_combout\ : std_logic;
SIGNAL \a12|carry~q\ : std_logic;
SIGNAL \a20|i4_validreg~0_combout\ : std_logic;
SIGNAL \a7|i2_opcode_outreg[2]~feeder_combout\ : std_logic;
SIGNAL \a20|i4_validreg~1_combout\ : std_logic;
SIGNAL \a20|i4_validreg~q\ : std_logic;
SIGNAL \a19|P3~1_combout\ : std_logic;
SIGNAL \a19|P3~0_combout\ : std_logic;
SIGNAL \a19|P3~2_combout\ : std_logic;
SIGNAL \a11|B_outreg~135_combout\ : std_logic;
SIGNAL \a11|B_outreg~29_combout\ : std_logic;
SIGNAL \a11|B_outreg~30_combout\ : std_logic;
SIGNAL \a11|B_outreg~26_combout\ : std_logic;
SIGNAL \a11|B_outreg~27_combout\ : std_logic;
SIGNAL \a11|B_outreg~28_combout\ : std_logic;
SIGNAL \a11|B_outreg~31_combout\ : std_logic;
SIGNAL \a11|B_outreg~32_combout\ : std_logic;
SIGNAL \a11|B_outreg~33_combout\ : std_logic;
SIGNAL \a12|alu2_b[2]~2_combout\ : std_logic;
SIGNAL \a12|Add0~4_combout\ : std_logic;
SIGNAL \a0|mem~2_combout\ : std_logic;
SIGNAL \a3|inter1reg~15_combout\ : std_logic;
SIGNAL \a7|dest_outreg~3_combout\ : std_logic;
SIGNAL \a7|dest_outreg~4_combout\ : std_logic;
SIGNAL \a16|process_0~1_combout\ : std_logic;
SIGNAL \a7|valid_outreg~0_combout\ : std_logic;
SIGNAL \a7|valid_outreg~q\ : std_logic;
SIGNAL \a11|valid_outreg~0_combout\ : std_logic;
SIGNAL \a11|valid_outreg~q\ : std_logic;
SIGNAL \a16|process_0~0_combout\ : std_logic;
SIGNAL \a19|P0~0_combout\ : std_logic;
SIGNAL \a19|P0~1_combout\ : std_logic;
SIGNAL \a18|stall_cont~0_combout\ : std_logic;
SIGNAL \a3|process_0~1_combout\ : std_logic;
SIGNAL \a3|inter1reg~7_combout\ : std_logic;
SIGNAL \a3|inter1reg~4_combout\ : std_logic;
SIGNAL \a0|mem~1_combout\ : std_logic;
SIGNAL \a3|inter1reg~5_combout\ : std_logic;
SIGNAL \a7|dest_outreg~0_combout\ : std_logic;
SIGNAL \a3|inter1reg~10_combout\ : std_logic;
SIGNAL \a3|inter1reg~17_combout\ : std_logic;
SIGNAL \a3|process_0~0_combout\ : std_logic;
SIGNAL \a3|inter1reg~8_combout\ : std_logic;
SIGNAL \a3|inter1reg~9_combout\ : std_logic;
SIGNAL \a6|WB_cont~0_combout\ : std_logic;
SIGNAL \a7|WB_cont_outreg~q\ : std_logic;
SIGNAL \a11|WB_cont_outreg~q\ : std_logic;
SIGNAL \a19|P0~2_combout\ : std_logic;
SIGNAL \a8|RAM[7][0]~q\ : std_logic;
SIGNAL \a8|RAM[5][0]~q\ : std_logic;
SIGNAL \a8|RAM[4][0]~q\ : std_logic;
SIGNAL \a11|B_outreg~12_combout\ : std_logic;
SIGNAL \a11|B_outreg~13_combout\ : std_logic;
SIGNAL \a8|RAM[2][0]~0_combout\ : std_logic;
SIGNAL \a8|RAM[2][0]~q\ : std_logic;
SIGNAL \a8|RAM[1][0]~1_combout\ : std_logic;
SIGNAL \a8|RAM[1][0]~q\ : std_logic;
SIGNAL \a8|RAM[0][0]~2_combout\ : std_logic;
SIGNAL \a8|RAM[0][0]~q\ : std_logic;
SIGNAL \a11|B_outreg~8_combout\ : std_logic;
SIGNAL \a8|RAM[3][0]~q\ : std_logic;
SIGNAL \a11|B_outreg~9_combout\ : std_logic;
SIGNAL \a11|B_outreg~11_combout\ : std_logic;
SIGNAL \a21|mem2_d1_out[0]~0_combout\ : std_logic;
SIGNAL \a11|B_outreg~14_combout\ : std_logic;
SIGNAL \a11|B_outreg~16_combout\ : std_logic;
SIGNAL \a11|B_outreg~17_combout\ : std_logic;
SIGNAL \a20|W_outreg~0_combout\ : std_logic;
SIGNAL \a11|A_outreg~14_combout\ : std_logic;
SIGNAL \a11|A_outreg~15_combout\ : std_logic;
SIGNAL \a11|A_outreg~7_combout\ : std_logic;
SIGNAL \a11|A_outreg~8_combout\ : std_logic;
SIGNAL \a11|A_outreg~13_combout\ : std_logic;
SIGNAL \a11|A_outreg~16_combout\ : std_logic;
SIGNAL \a11|A_outreg[0]~0_combout\ : std_logic;
SIGNAL \a12|Add0~0_combout\ : std_logic;
SIGNAL \a0|mem~3_combout\ : std_logic;
SIGNAL \a6|Equal0~0_combout\ : std_logic;
SIGNAL \a11|MEM_cont_outreg[1]~feeder_combout\ : std_logic;
SIGNAL \a20|W_outreg~4_combout\ : std_logic;
SIGNAL \a11|A_outreg~35_combout\ : std_logic;
SIGNAL \a11|A_outreg~36_combout\ : std_logic;
SIGNAL \a11|A_outreg~38_combout\ : std_logic;
SIGNAL \a11|A_outreg~39_combout\ : std_logic;
SIGNAL \a11|A_outreg~37_combout\ : std_logic;
SIGNAL \a11|A_outreg~40_combout\ : std_logic;
SIGNAL \a11|A_outreg[4]~4_combout\ : std_logic;
SIGNAL \a12|Add0~8_combout\ : std_logic;
SIGNAL \a0|mem~0_combout\ : std_logic;
SIGNAL \a7|rf_a1reg~1_combout\ : std_logic;
SIGNAL \a7|rf_a1reg[0]~feeder_combout\ : std_logic;
SIGNAL \a19|N3~0_combout\ : std_logic;
SIGNAL \a19|N3~1_combout\ : std_logic;
SIGNAL \a19|N2~0_combout\ : std_logic;
SIGNAL \a11|A_outreg~32_combout\ : std_logic;
SIGNAL \a11|A_outreg~33_combout\ : std_logic;
SIGNAL \a11|A_outreg~29_combout\ : std_logic;
SIGNAL \a11|A_outreg~30_combout\ : std_logic;
SIGNAL \a11|A_outreg~31_combout\ : std_logic;
SIGNAL \a11|A_outreg~34_combout\ : std_logic;
SIGNAL \a11|A_outreg[3]~3_combout\ : std_logic;
SIGNAL \a12|Add0~6_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[7]~feeder_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[6]~feeder_combout\ : std_logic;
SIGNAL \a21|mem2~24_combout\ : std_logic;
SIGNAL \a21|mem2~26_combout\ : std_logic;
SIGNAL \a21|mem2~42\ : std_logic;
SIGNAL \a21|mem2_rtl_0_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \a21|mem2_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \a22|i5_W2_outreg[0]~0_combout\ : std_logic;
SIGNAL \a8|RAM[6][0]~q\ : std_logic;
SIGNAL \a1|pc\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \a21|mem2_rtl_0_bypass\ : std_logic_vector(0 TO 44);
SIGNAL \a3|inter1reg\ : std_logic_vector(32 DOWNTO 0);
SIGNAL \a7|OR_cont_outreg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a20|dest_outreg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \a22|i5_destreg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \a7|MEM_cont_outreg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \a20|MEM_contreg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \a11|se16reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \a7|rf_a2reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \a7|dest_outreg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \a11|A_outreg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \a20|W_outreg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \a22|i5_W2_outreg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \a20|L_outreg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \a5|treg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \a11|B_outreg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \a11|EX_cont_outreg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \a11|MEM_cont_outreg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \a11|i3_d_outreg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \a11|i3_opcode_outreg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \a7|imm9reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \a7|rf_a1reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \a7|i2_opcode_outreg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \a3|ALT_INV_inter1reg\ : std_logic_vector(30 DOWNTO 30);
SIGNAL \a20|ALT_INV_MEM_contreg\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_nreset <= nreset;
reg <= IEEE.NUMERIC_STD.UNSIGNED(ww_reg);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\a21|mem2_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \a20|W_outreg\(15) & \a20|W_outreg\(14) & \a20|W_outreg\(13) & 
\a20|W_outreg\(12) & \a20|W_outreg\(11) & \a20|W_outreg\(10) & \a20|W_outreg\(9) & \a20|W_outreg\(8) & \a20|W_outreg\(7) & \a20|W_outreg\(6) & \a20|W_outreg\(5) & \a20|W_outreg\(4) & \a20|W_outreg\(3) & \a20|W_outreg\(2) & 
\a20|W_outreg\(1) & \a20|W_outreg\(0));

\a21|mem2_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\a20|L_outreg\(5) & \a20|L_outreg\(4) & \a20|L_outreg\(3) & \a20|L_outreg\(2) & \a20|L_outreg\(1) & \a20|L_outreg\(0));

\a21|mem2_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\a12|Add0~10_combout\ & \a12|Add0~8_combout\ & \a12|Add0~6_combout\ & \a12|Add0~4_combout\ & \a12|Add0~2_combout\ & \a12|Add0~0_combout\);

\a21|mem2_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \a21|mem2_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\a21|mem2_rtl_0|auto_generated|ram_block1a1\ <= \a21|mem2_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\a21|mem2_rtl_0|auto_generated|ram_block1a2\ <= \a21|mem2_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\a21|mem2_rtl_0|auto_generated|ram_block1a3\ <= \a21|mem2_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\a21|mem2_rtl_0|auto_generated|ram_block1a4\ <= \a21|mem2_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\a21|mem2_rtl_0|auto_generated|ram_block1a5\ <= \a21|mem2_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\a21|mem2_rtl_0|auto_generated|ram_block1a6\ <= \a21|mem2_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\a21|mem2_rtl_0|auto_generated|ram_block1a7\ <= \a21|mem2_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\a21|mem2_rtl_0|auto_generated|ram_block1a8\ <= \a21|mem2_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\a21|mem2_rtl_0|auto_generated|ram_block1a9\ <= \a21|mem2_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\a21|mem2_rtl_0|auto_generated|ram_block1a10\ <= \a21|mem2_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\a21|mem2_rtl_0|auto_generated|ram_block1a11\ <= \a21|mem2_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\a21|mem2_rtl_0|auto_generated|ram_block1a12\ <= \a21|mem2_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\a21|mem2_rtl_0|auto_generated|ram_block1a13\ <= \a21|mem2_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\a21|mem2_rtl_0|auto_generated|ram_block1a14\ <= \a21|mem2_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\a21|mem2_rtl_0|auto_generated|ram_block1a15\ <= \a21|mem2_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\a3|ALT_INV_inter1reg\(30) <= NOT \a3|inter1reg\(30);
\a20|ALT_INV_MEM_contreg\(0) <= NOT \a20|MEM_contreg\(0);

-- Location: IOOBUF_X38_Y34_N16
\reg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a8|RAM[6][0]~q\,
	devoe => ww_devoe,
	o => \reg[0]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\reg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a8|RAM[6][1]~q\,
	devoe => ww_devoe,
	o => \reg[1]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\reg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a8|RAM[6][2]~q\,
	devoe => ww_devoe,
	o => \reg[2]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\reg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a8|RAM[6][3]~q\,
	devoe => ww_devoe,
	o => \reg[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\reg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a8|RAM[6][4]~q\,
	devoe => ww_devoe,
	o => \reg[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\reg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a8|RAM[6][5]~q\,
	devoe => ww_devoe,
	o => \reg[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\reg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a8|RAM[6][6]~q\,
	devoe => ww_devoe,
	o => \reg[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\reg[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a8|RAM[6][7]~q\,
	devoe => ww_devoe,
	o => \reg[7]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G18
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X34_Y21_N20
\a21|mem2_rtl_0_bypass[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \a21|mem2_rtl_0_bypass[14]~feeder_combout\);

-- Location: FF_X34_Y21_N21
\a21|mem2_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(14));

-- Location: FF_X37_Y21_N19
\a3|inter1reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a3|inter1reg~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|inter1reg\(17));

-- Location: LCCOMB_X36_Y21_N26
\a3|inter1reg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \a3|inter1reg~6_combout\ = (\a3|inter1reg\(19) & ((\a3|inter1reg\(18)) # (\a3|inter1reg\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a3|inter1reg\(18),
	datac => \a3|inter1reg\(19),
	datad => \a3|inter1reg\(17),
	combout => \a3|inter1reg~6_combout\);

-- Location: LCCOMB_X36_Y21_N12
\a7|dest_outreg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a7|dest_outreg~2_combout\ = (!\a3|inter1reg\(18) & (\a3|inter1reg\(30) & !\a3|inter1reg\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a3|inter1reg\(18),
	datac => \a3|inter1reg\(30),
	datad => \a3|inter1reg\(17),
	combout => \a7|dest_outreg~2_combout\);

-- Location: LCCOMB_X37_Y21_N2
\a3|inter1reg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \a3|inter1reg~11_combout\ = (\a1|pc\(0) & \a0|mem~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|pc\(0),
	datac => \a0|mem~0_combout\,
	combout => \a3|inter1reg~11_combout\);

-- Location: LCCOMB_X38_Y21_N18
\a3|inter1reg~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \a3|inter1reg~16_combout\ = (\a3|process_0~1_combout\ & (((\a3|inter1reg~11_combout\)))) # (!\a3|process_0~1_combout\ & (!\a7|dest_outreg~0_combout\ & (\a3|inter1reg\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|dest_outreg~0_combout\,
	datab => \a3|process_0~1_combout\,
	datac => \a3|inter1reg\(21),
	datad => \a3|inter1reg~11_combout\,
	combout => \a3|inter1reg~16_combout\);

-- Location: FF_X38_Y21_N19
\a3|inter1reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a3|inter1reg~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|inter1reg\(21));

-- Location: LCCOMB_X38_Y21_N24
\a3|inter1reg~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \a3|inter1reg~12_combout\ = (\a3|inter1reg\(22) & ((\a3|inter1reg\(21)) # (!\a7|dest_outreg~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a3|inter1reg\(22),
	datac => \a7|dest_outreg~0_combout\,
	datad => \a3|inter1reg\(21),
	combout => \a3|inter1reg~12_combout\);

-- Location: LCCOMB_X38_Y21_N0
\a3|inter1reg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \a3|inter1reg~13_combout\ = (\a18|stall_cont~0_combout\ & ((\a3|process_0~0_combout\ & (\a3|inter1reg~11_combout\)) # (!\a3|process_0~0_combout\ & ((\a3|inter1reg~12_combout\))))) # (!\a18|stall_cont~0_combout\ & (\a3|inter1reg~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|inter1reg~11_combout\,
	datab => \a18|stall_cont~0_combout\,
	datac => \a3|process_0~0_combout\,
	datad => \a3|inter1reg~12_combout\,
	combout => \a3|inter1reg~13_combout\);

-- Location: FF_X38_Y21_N1
\a3|inter1reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a3|inter1reg~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|inter1reg\(22));

-- Location: LCCOMB_X38_Y21_N22
\a3|inter1reg~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \a3|inter1reg~14_combout\ = (\a3|inter1reg\(23) & (((\a3|inter1reg\(22)) # (\a3|inter1reg\(21))) # (!\a7|dest_outreg~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|dest_outreg~0_combout\,
	datab => \a3|inter1reg\(22),
	datac => \a3|inter1reg\(23),
	datad => \a3|inter1reg\(21),
	combout => \a3|inter1reg~14_combout\);

-- Location: LCCOMB_X37_Y20_N0
\a6|OR_cont[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a6|OR_cont[1]~0_combout\ = (\a3|inter1reg\(29)) # (\a3|inter1reg\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a3|inter1reg\(29),
	datac => \a3|inter1reg\(30),
	combout => \a6|OR_cont[1]~0_combout\);

-- Location: FF_X37_Y20_N1
\a7|OR_cont_outreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a6|OR_cont[1]~0_combout\,
	ena => \a18|stall_cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|OR_cont_outreg\(1));

-- Location: LCCOMB_X35_Y21_N4
\a11|EX_cont_outreg[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|EX_cont_outreg[7]~0_combout\ = !\a7|OR_cont_outreg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a7|OR_cont_outreg\(1),
	combout => \a11|EX_cont_outreg[7]~0_combout\);

-- Location: FF_X35_Y21_N5
\a11|EX_cont_outreg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|EX_cont_outreg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|EX_cont_outreg\(7));

-- Location: LCCOMB_X38_Y21_N4
\a5|treg[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \a5|treg[0]~6_combout\ = \a5|treg\(0) $ (VCC)
-- \a5|treg[0]~7\ = CARRY(\a5|treg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a5|treg\(0),
	datad => VCC,
	combout => \a5|treg[0]~6_combout\,
	cout => \a5|treg[0]~7\);

-- Location: FF_X38_Y21_N5
\a5|treg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a5|treg[0]~6_combout\,
	sclr => \a3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a5|treg\(0));

-- Location: LCCOMB_X38_Y21_N6
\a5|treg[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \a5|treg[1]~8_combout\ = (\a5|treg\(1) & (!\a5|treg[0]~7\)) # (!\a5|treg\(1) & ((\a5|treg[0]~7\) # (GND)))
-- \a5|treg[1]~9\ = CARRY((!\a5|treg[0]~7\) # (!\a5|treg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a5|treg\(1),
	datad => VCC,
	cin => \a5|treg[0]~7\,
	combout => \a5|treg[1]~8_combout\,
	cout => \a5|treg[1]~9\);

-- Location: FF_X38_Y21_N7
\a5|treg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a5|treg[1]~8_combout\,
	sclr => \a3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a5|treg\(1));

-- Location: LCCOMB_X38_Y21_N8
\a5|treg[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \a5|treg[2]~10_combout\ = (\a5|treg\(2) & (\a5|treg[1]~9\ $ (GND))) # (!\a5|treg\(2) & (!\a5|treg[1]~9\ & VCC))
-- \a5|treg[2]~11\ = CARRY((\a5|treg\(2) & !\a5|treg[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a5|treg\(2),
	datad => VCC,
	cin => \a5|treg[1]~9\,
	combout => \a5|treg[2]~10_combout\,
	cout => \a5|treg[2]~11\);

-- Location: FF_X38_Y21_N9
\a5|treg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a5|treg[2]~10_combout\,
	sclr => \a3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a5|treg\(2));

-- Location: LCCOMB_X38_Y21_N20
\a7|imm9reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a7|imm9reg~2_combout\ = (\a3|inter1reg\(30) & ((\a5|treg\(2)))) # (!\a3|inter1reg\(30) & (\a3|inter1reg\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|inter1reg\(19),
	datab => \a5|treg\(2),
	datac => \a3|inter1reg\(30),
	combout => \a7|imm9reg~2_combout\);

-- Location: FF_X38_Y21_N21
\a7|imm9reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a7|imm9reg~2_combout\,
	ena => \a18|stall_cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|imm9reg\(2));

-- Location: LCCOMB_X37_Y20_N24
\a11|se16reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|se16reg~2_combout\ = (\a7|OR_cont_outreg\(1) & \a7|imm9reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a7|OR_cont_outreg\(1),
	datad => \a7|imm9reg\(2),
	combout => \a11|se16reg~2_combout\);

-- Location: FF_X37_Y20_N25
\a11|se16reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|se16reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|se16reg\(2));

-- Location: FF_X36_Y17_N7
\a20|WB_contreg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a11|WB_cont_outreg~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a20|WB_contreg~q\);

-- Location: LCCOMB_X37_Y20_N2
\a7|i2_opcode_outreg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a7|i2_opcode_outreg[3]~feeder_combout\ = \a3|inter1reg\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a3|inter1reg\(30),
	combout => \a7|i2_opcode_outreg[3]~feeder_combout\);

-- Location: FF_X37_Y20_N3
\a7|i2_opcode_outreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a7|i2_opcode_outreg[3]~feeder_combout\,
	ena => \a18|stall_cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|i2_opcode_outreg\(3));

-- Location: LCCOMB_X37_Y20_N28
\a11|EX_cont_outreg[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|EX_cont_outreg[5]~1_combout\ = !\a7|i2_opcode_outreg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a7|i2_opcode_outreg\(3),
	combout => \a11|EX_cont_outreg[5]~1_combout\);

-- Location: FF_X37_Y20_N29
\a11|EX_cont_outreg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|EX_cont_outreg[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|EX_cont_outreg\(5));

-- Location: LCCOMB_X37_Y20_N16
\a6|MEM_cont[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a6|MEM_cont[0]~0_combout\ = (!\a3|inter1reg\(29) & \a3|inter1reg\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a3|inter1reg\(29),
	datac => \a3|inter1reg\(30),
	combout => \a6|MEM_cont[0]~0_combout\);

-- Location: FF_X37_Y20_N17
\a7|MEM_cont_outreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a6|MEM_cont[0]~0_combout\,
	ena => \a18|stall_cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|MEM_cont_outreg\(0));

-- Location: FF_X35_Y17_N15
\a11|MEM_cont_outreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a7|MEM_cont_outreg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|MEM_cont_outreg\(0));

-- Location: IOIBUF_X53_Y14_N1
\nreset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nreset,
	o => \nreset~input_o\);

-- Location: FF_X36_Y20_N23
\a1|pc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a12|Add0~6_combout\,
	clrn => \nreset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a1|pc\(3));

-- Location: LCCOMB_X34_Y18_N16
\a21|mem2_rtl_0_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \a21|mem2_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X34_Y18_N17
\a21|mem2_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(16));

-- Location: LCCOMB_X35_Y20_N6
\a20|W_outreg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \a20|W_outreg~5_combout\ = (\a11|MEM_cont_outreg\(1) & (\a11|B_outreg\(5))) # (!\a11|MEM_cont_outreg\(1) & ((\a12|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg\(5),
	datac => \a12|Add0~10_combout\,
	datad => \a11|MEM_cont_outreg\(1),
	combout => \a20|W_outreg~5_combout\);

-- Location: FF_X35_Y20_N7
\a20|W_outreg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a20|W_outreg~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a20|W_outreg\(5));

-- Location: FF_X36_Y17_N29
\a20|MEM_contreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a11|MEM_cont_outreg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a20|MEM_contreg\(0));

-- Location: FF_X36_Y17_N15
\a20|dest_outreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a11|i3_d_outreg\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a20|dest_outreg\(1));

-- Location: FF_X36_Y17_N25
\a22|i5_destreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a20|dest_outreg\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a22|i5_destreg\(1));

-- Location: LCCOMB_X38_Y21_N2
\a5|penc_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a5|penc_out~0_combout\ = (!\a3|inter1reg\(21) & ((\a3|inter1reg\(22)) # ((\a3|inter1reg\(24) & !\a3|inter1reg\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|inter1reg\(24),
	datab => \a3|inter1reg\(22),
	datac => \a3|inter1reg\(23),
	datad => \a3|inter1reg\(21),
	combout => \a5|penc_out~0_combout\);

-- Location: LCCOMB_X36_Y21_N6
\a5|penc_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a5|penc_out~1_combout\ = (\a3|inter1reg\(18)) # ((!\a3|inter1reg\(19) & ((\a3|inter1reg\(20)) # (\a5|penc_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|inter1reg\(20),
	datab => \a5|penc_out~0_combout\,
	datac => \a3|inter1reg\(19),
	datad => \a3|inter1reg\(18),
	combout => \a5|penc_out~1_combout\);

-- Location: LCCOMB_X36_Y21_N16
\a5|penc_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a5|penc_out~2_combout\ = (!\a3|inter1reg\(17) & \a5|penc_out~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a3|inter1reg\(17),
	datad => \a5|penc_out~1_combout\,
	combout => \a5|penc_out~2_combout\);

-- Location: FF_X36_Y21_N17
\a7|rf_a2reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a5|penc_out~2_combout\,
	asdata => \a3|inter1reg\(20),
	sload => \a3|ALT_INV_inter1reg\(30),
	ena => \a18|stall_cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|rf_a2reg\(0));

-- Location: LCCOMB_X36_Y21_N10
\a7|dest_outreg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \a7|dest_outreg~5_combout\ = (\a5|penc_out~1_combout\ & (!\a3|inter1reg\(17) & \a3|inter1reg\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|penc_out~1_combout\,
	datab => \a3|inter1reg\(17),
	datad => \a3|inter1reg\(30),
	combout => \a7|dest_outreg~5_combout\);

-- Location: LCCOMB_X37_Y21_N12
\a0|mem~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \a0|mem~4_combout\ = (!\a1|pc\(3) & ((\a1|pc\(1) & (!\a1|pc\(2) & \a1|pc\(0))) # (!\a1|pc\(1) & (\a1|pc\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|pc\(1),
	datab => \a1|pc\(2),
	datac => \a1|pc\(3),
	datad => \a1|pc\(0),
	combout => \a0|mem~4_combout\);

-- Location: LCCOMB_X37_Y21_N10
\a0|mem~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \a0|mem~5_combout\ = (!\a1|pc\(4) & \a0|mem~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|pc\(4),
	datad => \a0|mem~4_combout\,
	combout => \a0|mem~5_combout\);

-- Location: FF_X37_Y21_N11
\a3|inter1reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a0|mem~5_combout\,
	ena => \a3|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|inter1reg\(26));

-- Location: FF_X36_Y21_N11
\a7|dest_outreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a7|dest_outreg~5_combout\,
	asdata => \a3|inter1reg\(26),
	sload => \a3|ALT_INV_inter1reg\(30),
	ena => \a18|stall_cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|dest_outreg\(0));

-- Location: FF_X36_Y17_N9
\a11|i3_d_outreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a7|dest_outreg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|i3_d_outreg\(0));

-- Location: FF_X36_Y17_N27
\a20|dest_outreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a11|i3_d_outreg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a20|dest_outreg\(0));

-- Location: FF_X36_Y17_N21
\a22|i5_destreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a20|dest_outreg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a22|i5_destreg\(0));

-- Location: LCCOMB_X36_Y21_N8
\a7|rf_a2reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a7|rf_a2reg~1_combout\ = (\a7|dest_outreg~4_combout\) # ((\a3|inter1reg\(21) & !\a3|inter1reg\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|inter1reg\(21),
	datab => \a7|dest_outreg~4_combout\,
	datad => \a3|inter1reg\(30),
	combout => \a7|rf_a2reg~1_combout\);

-- Location: FF_X36_Y21_N9
\a7|rf_a2reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a7|rf_a2reg~1_combout\,
	ena => \a18|stall_cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|rf_a2reg\(1));

-- Location: LCCOMB_X36_Y17_N20
\a11|B_outreg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~4_combout\ = (\a22|i5_destreg\(1) & ((\a7|rf_a2reg\(0) $ (\a22|i5_destreg\(0))) # (!\a7|rf_a2reg\(1)))) # (!\a22|i5_destreg\(1) & ((\a7|rf_a2reg\(1)) # (\a7|rf_a2reg\(0) $ (\a22|i5_destreg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a22|i5_destreg\(1),
	datab => \a7|rf_a2reg\(0),
	datac => \a22|i5_destreg\(0),
	datad => \a7|rf_a2reg\(1),
	combout => \a11|B_outreg~4_combout\);

-- Location: LCCOMB_X38_Y21_N16
\a5|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a5|process_1~0_combout\ = (!\a3|inter1reg\(22) & (!\a3|inter1reg\(23) & !\a3|inter1reg\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a3|inter1reg\(22),
	datac => \a3|inter1reg\(23),
	datad => \a3|inter1reg\(21),
	combout => \a5|process_1~0_combout\);

-- Location: LCCOMB_X37_Y21_N30
\a7|dest_outreg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a7|dest_outreg~1_combout\ = (\a7|dest_outreg~0_combout\ & (\a3|inter1reg\(30) & ((\a3|inter1reg\(24)) # (!\a5|process_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|dest_outreg~0_combout\,
	datab => \a3|inter1reg\(30),
	datac => \a3|inter1reg\(24),
	datad => \a5|process_1~0_combout\,
	combout => \a7|dest_outreg~1_combout\);

-- Location: LCCOMB_X37_Y20_N20
\a7|dest_outreg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a7|dest_outreg[2]~feeder_combout\ = \a7|dest_outreg~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a7|dest_outreg~1_combout\,
	combout => \a7|dest_outreg[2]~feeder_combout\);

-- Location: FF_X37_Y20_N21
\a7|dest_outreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a7|dest_outreg[2]~feeder_combout\,
	asdata => \a3|inter1reg\(26),
	sload => \a3|ALT_INV_inter1reg\(30),
	ena => \a18|stall_cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|dest_outreg\(2));

-- Location: FF_X36_Y17_N23
\a11|i3_d_outreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a7|dest_outreg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|i3_d_outreg\(2));

-- Location: FF_X36_Y17_N31
\a20|dest_outreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a11|i3_d_outreg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a20|dest_outreg\(2));

-- Location: FF_X36_Y17_N11
\a22|i5_destreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a20|dest_outreg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a22|i5_destreg\(2));

-- Location: FF_X36_Y17_N17
\a22|i5_validreg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a20|i4_validreg~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a22|i5_validreg~q\);

-- Location: FF_X36_Y17_N3
\a22|i5_WBreg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a20|WB_contreg~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a22|i5_WBreg~q\);

-- Location: LCCOMB_X37_Y20_N30
\a7|rf_a2reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a7|rf_a2reg~0_combout\ = (\a7|dest_outreg~1_combout\) # ((!\a3|inter1reg\(30) & \a3|inter1reg\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|inter1reg\(30),
	datac => \a7|dest_outreg~1_combout\,
	datad => \a3|inter1reg\(22),
	combout => \a7|rf_a2reg~0_combout\);

-- Location: FF_X36_Y20_N5
\a7|rf_a2reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a7|rf_a2reg~0_combout\,
	sload => VCC,
	ena => \a18|stall_cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|rf_a2reg\(2));

-- Location: LCCOMB_X36_Y17_N2
\a11|B_outreg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~5_combout\ = ((\a22|i5_destreg\(2) $ (\a7|rf_a2reg\(2))) # (!\a22|i5_WBreg~q\)) # (!\a22|i5_validreg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a22|i5_destreg\(2),
	datab => \a22|i5_validreg~q\,
	datac => \a22|i5_WBreg~q\,
	datad => \a7|rf_a2reg\(2),
	combout => \a11|B_outreg~5_combout\);

-- Location: LCCOMB_X35_Y17_N26
\a11|B_outreg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~6_combout\ = (\a11|B_outreg~4_combout\) # (\a11|B_outreg~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a11|B_outreg~4_combout\,
	datad => \a11|B_outreg~5_combout\,
	combout => \a11|B_outreg~6_combout\);

-- Location: LCCOMB_X37_Y20_N26
\a7|EX_cont_outreg[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a7|EX_cont_outreg[3]~0_combout\ = (\a3|inter1reg\(30)) # (!\a3|inter1reg\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a3|inter1reg\(29),
	datac => \a3|inter1reg\(30),
	combout => \a7|EX_cont_outreg[3]~0_combout\);

-- Location: FF_X37_Y20_N27
\a7|OR_cont_outreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a7|EX_cont_outreg[3]~0_combout\,
	ena => \a18|stall_cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|OR_cont_outreg\(2));

-- Location: LCCOMB_X34_Y17_N18
\a11|B_outreg~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~15_combout\ = (\a19|P0~2_combout\) # ((!\a19|P3~2_combout\ & (\a11|B_outreg~6_combout\ & !\a7|OR_cont_outreg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a19|P3~2_combout\,
	datab => \a11|B_outreg~6_combout\,
	datac => \a7|OR_cont_outreg\(2),
	datad => \a19|P0~2_combout\,
	combout => \a11|B_outreg~15_combout\);

-- Location: LCCOMB_X34_Y17_N8
\a11|B_outreg~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~134_combout\ = (!\a11|B_outreg~15_combout\ & (((\a20|MEM_contreg\(0) & \a20|i4_validreg~q\)) # (!\a19|P3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a19|P3~2_combout\,
	datab => \a20|MEM_contreg\(0),
	datac => \a20|i4_validreg~q\,
	datad => \a11|B_outreg~15_combout\,
	combout => \a11|B_outreg~134_combout\);

-- Location: LCCOMB_X34_Y17_N26
\a21|mem2_rtl_0_bypass[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[23]~feeder_combout\ = \a20|W_outreg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a20|W_outreg\(5),
	combout => \a21|mem2_rtl_0_bypass[23]~feeder_combout\);

-- Location: FF_X34_Y17_N27
\a21|mem2_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(23));

-- Location: LCCOMB_X34_Y18_N18
\a21|mem2_rtl_0_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \a21|mem2_rtl_0_bypass[24]~feeder_combout\);

-- Location: FF_X34_Y18_N19
\a21|mem2_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(24));

-- Location: LCCOMB_X34_Y18_N8
\a21|mem2~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2~46\ = (\a21|mem2~26_combout\) # (!\a21|mem2_rtl_0_bypass\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a21|mem2_rtl_0_bypass\(24),
	datad => \a21|mem2~26_combout\,
	combout => \a21|mem2~46\);

-- Location: LCCOMB_X37_Y20_N6
\a20|MEM_contreg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a20|MEM_contreg[1]~feeder_combout\ = \a11|MEM_cont_outreg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a11|MEM_cont_outreg\(1),
	combout => \a20|MEM_contreg[1]~feeder_combout\);

-- Location: FF_X37_Y20_N7
\a20|MEM_contreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a20|MEM_contreg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a20|MEM_contreg\(1));

-- Location: LCCOMB_X36_Y20_N4
\a21|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|process_0~0_combout\ = (\a20|i4_validreg~q\ & \a20|MEM_contreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a20|i4_validreg~q\,
	datad => \a20|MEM_contreg\(1),
	combout => \a21|process_0~0_combout\);

-- Location: LCCOMB_X34_Y19_N4
\a20|L_outreg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a20|L_outreg[0]~feeder_combout\ = \a12|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a12|Add0~0_combout\,
	combout => \a20|L_outreg[0]~feeder_combout\);

-- Location: FF_X34_Y19_N5
\a20|L_outreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a20|L_outreg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a20|L_outreg\(0));

-- Location: FF_X36_Y20_N17
\a20|L_outreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a12|Add0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a20|L_outreg\(1));

-- Location: FF_X35_Y18_N15
\a20|L_outreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a12|Add0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a20|L_outreg\(2));

-- Location: LCCOMB_X35_Y18_N26
\a20|L_outreg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a20|L_outreg[4]~feeder_combout\ = \a12|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a12|Add0~8_combout\,
	combout => \a20|L_outreg[4]~feeder_combout\);

-- Location: FF_X35_Y18_N27
\a20|L_outreg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a20|L_outreg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a20|L_outreg\(4));

-- Location: FF_X36_Y20_N27
\a20|L_outreg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a12|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a20|L_outreg\(5));

-- Location: LCCOMB_X35_Y17_N10
\a11|B_outreg[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg[10]~10_combout\ = (\a11|B_outreg~4_combout\ & (((!\a19|P3~2_combout\)) # (!\a20|MEM_contreg\(0)))) # (!\a11|B_outreg~4_combout\ & (\a11|B_outreg~5_combout\ & ((!\a19|P3~2_combout\) # (!\a20|MEM_contreg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~4_combout\,
	datab => \a20|MEM_contreg\(0),
	datac => \a19|P3~2_combout\,
	datad => \a11|B_outreg~5_combout\,
	combout => \a11|B_outreg[10]~10_combout\);

-- Location: LCCOMB_X31_Y21_N28
\a8|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a8|Decoder0~0_combout\ = (\a22|i5_destreg\(2) & (\a22|i5_destreg\(1) & !\a22|i5_destreg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a22|i5_destreg\(2),
	datac => \a22|i5_destreg\(1),
	datad => \a22|i5_destreg\(0),
	combout => \a8|Decoder0~0_combout\);

-- Location: FF_X32_Y17_N15
\a8|RAM[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(1),
	sload => VCC,
	ena => \a8|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[6][1]~q\);

-- Location: LCCOMB_X36_Y17_N30
\a8|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \a8|Decoder0~6_combout\ = (!\a22|i5_destreg\(1) & (\a22|i5_destreg\(2) & !\a22|i5_destreg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a22|i5_destreg\(1),
	datab => \a22|i5_destreg\(2),
	datad => \a22|i5_destreg\(0),
	combout => \a8|Decoder0~6_combout\);

-- Location: FF_X32_Y17_N13
\a8|RAM[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(1),
	sload => VCC,
	ena => \a8|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[4][1]~q\);

-- Location: LCCOMB_X32_Y17_N12
\a11|B_outreg~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~21_combout\ = (\a7|rf_a2reg\(0) & (((\a7|rf_a2reg\(1))))) # (!\a7|rf_a2reg\(0) & ((\a7|rf_a2reg\(1) & (\a8|RAM[6][1]~q\)) # (!\a7|rf_a2reg\(1) & ((\a8|RAM[4][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(0),
	datab => \a8|RAM[6][1]~q\,
	datac => \a8|RAM[4][1]~q\,
	datad => \a7|rf_a2reg\(1),
	combout => \a11|B_outreg~21_combout\);

-- Location: LCCOMB_X31_Y20_N28
\a8|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \a8|Decoder0~5_combout\ = (!\a22|i5_destreg\(1) & (\a22|i5_destreg\(0) & \a22|i5_destreg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a22|i5_destreg\(1),
	datac => \a22|i5_destreg\(0),
	datad => \a22|i5_destreg\(2),
	combout => \a8|Decoder0~5_combout\);

-- Location: FF_X31_Y17_N17
\a8|RAM[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(1),
	sload => VCC,
	ena => \a8|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[5][1]~q\);

-- Location: LCCOMB_X31_Y17_N22
\a11|B_outreg~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~22_combout\ = (\a7|rf_a2reg\(0) & ((\a11|B_outreg~21_combout\ & (\a8|RAM[7][1]~q\)) # (!\a11|B_outreg~21_combout\ & ((\a8|RAM[5][1]~q\))))) # (!\a7|rf_a2reg\(0) & (\a11|B_outreg~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(0),
	datab => \a11|B_outreg~21_combout\,
	datac => \a8|RAM[7][1]~q\,
	datad => \a8|RAM[5][1]~q\,
	combout => \a11|B_outreg~22_combout\);

-- Location: LCCOMB_X31_Y21_N16
\a8|RAM[3][1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \a8|RAM[3][1]~4_combout\ = !\a22|i5_W2_outreg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a22|i5_W2_outreg\(1),
	combout => \a8|RAM[3][1]~4_combout\);

-- Location: LCCOMB_X31_Y21_N30
\a8|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \a8|Decoder0~4_combout\ = (!\a22|i5_destreg\(2) & (\a22|i5_destreg\(1) & \a22|i5_destreg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a22|i5_destreg\(2),
	datac => \a22|i5_destreg\(1),
	datad => \a22|i5_destreg\(0),
	combout => \a8|Decoder0~4_combout\);

-- Location: FF_X31_Y21_N17
\a8|RAM[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|RAM[3][1]~4_combout\,
	ena => \a8|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[3][1]~q\);

-- Location: LCCOMB_X31_Y21_N12
\a8|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a8|Decoder0~1_combout\ = (!\a22|i5_destreg\(2) & (\a22|i5_destreg\(1) & !\a22|i5_destreg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a22|i5_destreg\(2),
	datac => \a22|i5_destreg\(1),
	datad => \a22|i5_destreg\(0),
	combout => \a8|Decoder0~1_combout\);

-- Location: FF_X31_Y21_N19
\a8|RAM[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(1),
	sload => VCC,
	ena => \a8|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[2][1]~q\);

-- Location: LCCOMB_X31_Y20_N4
\a8|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \a8|Decoder0~3_combout\ = (!\a22|i5_destreg\(1) & (!\a22|i5_destreg\(0) & !\a22|i5_destreg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a22|i5_destreg\(1),
	datab => \a22|i5_destreg\(0),
	datad => \a22|i5_destreg\(2),
	combout => \a8|Decoder0~3_combout\);

-- Location: FF_X30_Y18_N31
\a8|RAM[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(1),
	sload => VCC,
	ena => \a8|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[0][1]~q\);

-- Location: LCCOMB_X30_Y18_N20
\a8|RAM[1][1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \a8|RAM[1][1]~3_combout\ = !\a22|i5_W2_outreg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a22|i5_W2_outreg\(1),
	combout => \a8|RAM[1][1]~3_combout\);

-- Location: LCCOMB_X31_Y20_N26
\a8|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a8|Decoder0~2_combout\ = (!\a22|i5_destreg\(1) & (\a22|i5_destreg\(0) & !\a22|i5_destreg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a22|i5_destreg\(1),
	datac => \a22|i5_destreg\(0),
	datad => \a22|i5_destreg\(2),
	combout => \a8|Decoder0~2_combout\);

-- Location: FF_X30_Y18_N21
\a8|RAM[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|RAM[1][1]~3_combout\,
	ena => \a8|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[1][1]~q\);

-- Location: LCCOMB_X30_Y18_N4
\a11|B_outreg~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~18_combout\ = (\a7|rf_a2reg\(1) & (((\a7|rf_a2reg\(0))))) # (!\a7|rf_a2reg\(1) & ((\a7|rf_a2reg\(0) & ((!\a8|RAM[1][1]~q\))) # (!\a7|rf_a2reg\(0) & (\a8|RAM[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[0][1]~q\,
	datab => \a7|rf_a2reg\(1),
	datac => \a8|RAM[1][1]~q\,
	datad => \a7|rf_a2reg\(0),
	combout => \a11|B_outreg~18_combout\);

-- Location: LCCOMB_X31_Y21_N18
\a11|B_outreg~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~19_combout\ = (\a7|rf_a2reg\(1) & ((\a11|B_outreg~18_combout\ & (!\a8|RAM[3][1]~q\)) # (!\a11|B_outreg~18_combout\ & ((\a8|RAM[2][1]~q\))))) # (!\a7|rf_a2reg\(1) & (((\a11|B_outreg~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(1),
	datab => \a8|RAM[3][1]~q\,
	datac => \a8|RAM[2][1]~q\,
	datad => \a11|B_outreg~18_combout\,
	combout => \a11|B_outreg~19_combout\);

-- Location: LCCOMB_X35_Y17_N20
\a11|B_outreg[10]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg[10]~7_combout\ = (\a11|B_outreg~6_combout\ & ((\a7|rf_a2reg\(2)) # ((\a19|P3~2_combout\ & \a20|MEM_contreg\(0))))) # (!\a11|B_outreg~6_combout\ & (((\a19|P3~2_combout\ & \a20|MEM_contreg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~6_combout\,
	datab => \a7|rf_a2reg\(2),
	datac => \a19|P3~2_combout\,
	datad => \a20|MEM_contreg\(0),
	combout => \a11|B_outreg[10]~7_combout\);

-- Location: FF_X35_Y21_N21
\a21|mem2_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a20|W_outreg\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(15));

-- Location: LCCOMB_X35_Y20_N18
\a20|W_outreg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a20|W_outreg~2_combout\ = (\a11|MEM_cont_outreg\(1) & ((\a11|B_outreg\(2)))) # (!\a11|MEM_cont_outreg\(1) & (\a12|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|MEM_cont_outreg\(1),
	datac => \a12|Add0~4_combout\,
	datad => \a11|B_outreg\(2),
	combout => \a20|W_outreg~2_combout\);

-- Location: FF_X35_Y20_N19
\a20|W_outreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a20|W_outreg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a20|W_outreg\(2));

-- Location: LCCOMB_X32_Y21_N26
\a21|mem2_rtl_0_bypass[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[19]~feeder_combout\ = \a20|W_outreg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a20|W_outreg\(3),
	combout => \a21|mem2_rtl_0_bypass[19]~feeder_combout\);

-- Location: FF_X32_Y21_N27
\a21|mem2_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(19));

-- Location: LCCOMB_X35_Y21_N12
\a21|mem2_rtl_0_bypass[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \a21|mem2_rtl_0_bypass[20]~feeder_combout\);

-- Location: FF_X35_Y21_N13
\a21|mem2_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(20));

-- Location: LCCOMB_X32_Y21_N20
\a21|mem2~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2~44\ = (\a21|mem2~26_combout\) # (!\a21|mem2_rtl_0_bypass\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a21|mem2_rtl_0_bypass\(20),
	datad => \a21|mem2~26_combout\,
	combout => \a21|mem2~44\);

-- Location: LCCOMB_X38_Y21_N10
\a5|treg[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \a5|treg[3]~12_combout\ = (\a5|treg\(3) & (!\a5|treg[2]~11\)) # (!\a5|treg\(3) & ((\a5|treg[2]~11\) # (GND)))
-- \a5|treg[3]~13\ = CARRY((!\a5|treg[2]~11\) # (!\a5|treg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a5|treg\(3),
	datad => VCC,
	cin => \a5|treg[2]~11\,
	combout => \a5|treg[3]~12_combout\,
	cout => \a5|treg[3]~13\);

-- Location: FF_X38_Y21_N11
\a5|treg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a5|treg[3]~12_combout\,
	sclr => \a3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a5|treg\(3));

-- Location: LCCOMB_X38_Y21_N12
\a5|treg[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \a5|treg[4]~14_combout\ = (\a5|treg\(4) & (\a5|treg[3]~13\ $ (GND))) # (!\a5|treg\(4) & (!\a5|treg[3]~13\ & VCC))
-- \a5|treg[4]~15\ = CARRY((\a5|treg\(4) & !\a5|treg[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a5|treg\(4),
	datad => VCC,
	cin => \a5|treg[3]~13\,
	combout => \a5|treg[4]~14_combout\,
	cout => \a5|treg[4]~15\);

-- Location: FF_X38_Y21_N13
\a5|treg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a5|treg[4]~14_combout\,
	sclr => \a3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a5|treg\(4));

-- Location: LCCOMB_X38_Y21_N14
\a5|treg[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \a5|treg[5]~16_combout\ = \a5|treg\(5) $ (\a5|treg[4]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a5|treg\(5),
	cin => \a5|treg[4]~15\,
	combout => \a5|treg[5]~16_combout\);

-- Location: FF_X38_Y21_N15
\a5|treg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a5|treg[5]~16_combout\,
	sclr => \a3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a5|treg\(5));

-- Location: LCCOMB_X37_Y20_N14
\a7|imm9reg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \a7|imm9reg~5_combout\ = (\a3|inter1reg\(30) & ((\a5|treg\(5)))) # (!\a3|inter1reg\(30) & (\a3|inter1reg\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a3|inter1reg\(22),
	datac => \a3|inter1reg\(30),
	datad => \a5|treg\(5),
	combout => \a7|imm9reg~5_combout\);

-- Location: FF_X37_Y20_N15
\a7|imm9reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a7|imm9reg~5_combout\,
	ena => \a18|stall_cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|imm9reg\(5));

-- Location: LCCOMB_X37_Y20_N12
\a11|se16reg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|se16reg~5_combout\ = (\a7|imm9reg\(5) & \a7|OR_cont_outreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a7|imm9reg\(5),
	datad => \a7|OR_cont_outreg\(1),
	combout => \a11|se16reg~5_combout\);

-- Location: FF_X36_Y20_N13
\a11|se16reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a11|se16reg~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|se16reg\(10));

-- Location: LCCOMB_X36_Y20_N12
\a12|alu2_b[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|alu2_b[6]~6_combout\ = (\a11|EX_cont_outreg\(7) & ((\a11|B_outreg\(6)))) # (!\a11|EX_cont_outreg\(7) & (\a11|se16reg\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|EX_cont_outreg\(7),
	datac => \a11|se16reg\(10),
	datad => \a11|B_outreg\(6),
	combout => \a12|alu2_b[6]~6_combout\);

-- Location: LCCOMB_X36_Y17_N16
\a11|A_outreg[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg[7]~10_combout\ = ((\a7|rf_a1reg\(2) $ (\a22|i5_destreg\(2))) # (!\a22|i5_validreg~q\)) # (!\a22|i5_WBreg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a1reg\(2),
	datab => \a22|i5_WBreg~q\,
	datac => \a22|i5_validreg~q\,
	datad => \a22|i5_destreg\(2),
	combout => \a11|A_outreg[7]~10_combout\);

-- Location: LCCOMB_X38_Y20_N8
\a7|rf_a1reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a7|rf_a1reg~0_combout\ = (\a3|inter1reg\(24) & !\a3|inter1reg\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a3|inter1reg\(24),
	datad => \a3|inter1reg\(30),
	combout => \a7|rf_a1reg~0_combout\);

-- Location: LCCOMB_X35_Y20_N28
\a7|rf_a1reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a7|rf_a1reg[1]~feeder_combout\ = \a7|rf_a1reg~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a7|rf_a1reg~0_combout\,
	combout => \a7|rf_a1reg[1]~feeder_combout\);

-- Location: FF_X35_Y20_N29
\a7|rf_a1reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a7|rf_a1reg[1]~feeder_combout\,
	ena => \a18|stall_cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|rf_a1reg\(1));

-- Location: LCCOMB_X36_Y17_N24
\a11|A_outreg[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg[7]~9_combout\ = (\a7|rf_a1reg\(0) & ((\a22|i5_destreg\(1) $ (\a7|rf_a1reg\(1))) # (!\a22|i5_destreg\(0)))) # (!\a7|rf_a1reg\(0) & ((\a22|i5_destreg\(0)) # (\a22|i5_destreg\(1) $ (\a7|rf_a1reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a1reg\(0),
	datab => \a22|i5_destreg\(0),
	datac => \a22|i5_destreg\(1),
	datad => \a7|rf_a1reg\(1),
	combout => \a11|A_outreg[7]~9_combout\);

-- Location: LCCOMB_X36_Y17_N28
\a11|A_outreg[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg[7]~11_combout\ = (\a11|A_outreg[7]~10_combout\ & (((!\a19|N3~1_combout\) # (!\a20|MEM_contreg\(0))))) # (!\a11|A_outreg[7]~10_combout\ & (\a11|A_outreg[7]~9_combout\ & ((!\a19|N3~1_combout\) # (!\a20|MEM_contreg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg[7]~10_combout\,
	datab => \a11|A_outreg[7]~9_combout\,
	datac => \a20|MEM_contreg\(0),
	datad => \a19|N3~1_combout\,
	combout => \a11|A_outreg[7]~11_combout\);

-- Location: LCCOMB_X34_Y20_N12
\a21|mem2_rtl_0_bypass[25]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[25]~1_combout\ = !\a20|W_outreg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a20|W_outreg\(6),
	combout => \a21|mem2_rtl_0_bypass[25]~1_combout\);

-- Location: FF_X34_Y20_N13
\a21|mem2_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[25]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(25));

-- Location: LCCOMB_X34_Y20_N26
\a21|mem2_rtl_0_bypass[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[26]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \a21|mem2_rtl_0_bypass[26]~feeder_combout\);

-- Location: FF_X34_Y20_N27
\a21|mem2_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(26));

-- Location: LCCOMB_X34_Y20_N4
\a21|mem2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2~47\ = (\a21|mem2~26_combout\) # (!\a21|mem2_rtl_0_bypass\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a21|mem2_rtl_0_bypass\(26),
	datad => \a21|mem2~26_combout\,
	combout => \a21|mem2~47\);

-- Location: LCCOMB_X35_Y17_N24
\a19|P2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a19|P2~combout\ = (\a19|P3~2_combout\ & ((!\a20|MEM_contreg\(0)) # (!\a20|i4_validreg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a20|i4_validreg~q\,
	datac => \a19|P3~2_combout\,
	datad => \a20|MEM_contreg\(0),
	combout => \a19|P2~combout\);

-- Location: LCCOMB_X35_Y19_N0
\a11|A_outreg[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg[7]~12_combout\ = (\a20|MEM_contreg\(0) & ((\a19|N3~1_combout\) # ((\a7|rf_a1reg\(2) & \a11|A_outreg[7]~11_combout\)))) # (!\a20|MEM_contreg\(0) & (\a7|rf_a1reg\(2) & ((\a11|A_outreg[7]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a20|MEM_contreg\(0),
	datab => \a7|rf_a1reg\(2),
	datac => \a19|N3~1_combout\,
	datad => \a11|A_outreg[7]~11_combout\,
	combout => \a11|A_outreg[7]~12_combout\);

-- Location: LCCOMB_X34_Y22_N28
\a21|mem2_rtl_0_bypass[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[28]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \a21|mem2_rtl_0_bypass[28]~feeder_combout\);

-- Location: FF_X34_Y22_N29
\a21|mem2_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(28));

-- Location: LCCOMB_X34_Y22_N22
\a21|mem2~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2~48\ = (\a21|mem2~26_combout\) # (!\a21|mem2_rtl_0_bypass\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a21|mem2~26_combout\,
	datad => \a21|mem2_rtl_0_bypass\(28),
	combout => \a21|mem2~48\);

-- Location: LCCOMB_X34_Y22_N18
\a21|mem2_rtl_0_bypass[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[27]~feeder_combout\ = \a20|W_outreg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a20|W_outreg\(7),
	combout => \a21|mem2_rtl_0_bypass[27]~feeder_combout\);

-- Location: FF_X34_Y22_N19
\a21|mem2_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(27));

-- Location: LCCOMB_X37_Y19_N22
\a11|B_outreg~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~114_combout\ = (\a19|P0~2_combout\ & (\a12|Add0~16_combout\)) # (!\a19|P0~2_combout\ & (((\a20|W_outreg\(8) & \a19|P2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a12|Add0~16_combout\,
	datab => \a20|W_outreg\(8),
	datac => \a19|P2~combout\,
	datad => \a19|P0~2_combout\,
	combout => \a11|B_outreg~114_combout\);

-- Location: LCCOMB_X37_Y19_N30
\a11|B_outreg~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~73_combout\ = (!\a19|P2~combout\ & (!\a19|P0~2_combout\ & ((\a7|OR_cont_outreg\(2)) # (!\a11|B_outreg[10]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a19|P2~combout\,
	datab => \a7|OR_cont_outreg\(2),
	datac => \a11|B_outreg[10]~10_combout\,
	datad => \a19|P0~2_combout\,
	combout => \a11|B_outreg~73_combout\);

-- Location: LCCOMB_X38_Y19_N22
\a21|mem2_rtl_0_bypass[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[30]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \a21|mem2_rtl_0_bypass[30]~feeder_combout\);

-- Location: FF_X38_Y19_N23
\a21|mem2_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(30));

-- Location: LCCOMB_X38_Y19_N20
\a21|mem2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2~53\ = (\a21|mem2~26_combout\) # (!\a21|mem2_rtl_0_bypass\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a21|mem2_rtl_0_bypass\(30),
	datad => \a21|mem2~26_combout\,
	combout => \a21|mem2~53\);

-- Location: LCCOMB_X37_Y19_N14
\a21|mem2_rtl_0_bypass[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[29]~feeder_combout\ = \a20|W_outreg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a20|W_outreg\(8),
	combout => \a21|mem2_rtl_0_bypass[29]~feeder_combout\);

-- Location: FF_X37_Y19_N15
\a21|mem2_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(29));

-- Location: LCCOMB_X36_Y22_N26
\a21|mem2_rtl_0_bypass[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[32]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \a21|mem2_rtl_0_bypass[32]~feeder_combout\);

-- Location: FF_X36_Y22_N27
\a21|mem2_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(32));

-- Location: LCCOMB_X36_Y22_N12
\a21|mem2~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2~52\ = (\a21|mem2~26_combout\) # (!\a21|mem2_rtl_0_bypass\(32))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a21|mem2_rtl_0_bypass\(32),
	datac => \a21|mem2~26_combout\,
	combout => \a21|mem2~52\);

-- Location: LCCOMB_X36_Y22_N16
\a21|mem2_rtl_0_bypass[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[31]~feeder_combout\ = \a20|W_outreg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a20|W_outreg\(9),
	combout => \a21|mem2_rtl_0_bypass[31]~feeder_combout\);

-- Location: FF_X36_Y22_N17
\a21|mem2_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(31));

-- Location: LCCOMB_X36_Y19_N30
\a12|alu2_b[10]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|alu2_b[10]~11_combout\ = (\a11|EX_cont_outreg\(7) & (\a11|B_outreg\(10))) # (!\a11|EX_cont_outreg\(7) & ((\a11|se16reg\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|EX_cont_outreg\(7),
	datab => \a11|B_outreg\(10),
	datad => \a11|se16reg\(10),
	combout => \a12|alu2_b[10]~11_combout\);

-- Location: LCCOMB_X35_Y19_N26
\a21|mem2_rtl_0_bypass[33]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[33]~feeder_combout\ = \a20|W_outreg\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a20|W_outreg\(10),
	combout => \a21|mem2_rtl_0_bypass[33]~feeder_combout\);

-- Location: FF_X35_Y19_N27
\a21|mem2_rtl_0_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[33]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(33));

-- Location: LCCOMB_X35_Y19_N28
\a21|mem2_rtl_0_bypass[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[34]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \a21|mem2_rtl_0_bypass[34]~feeder_combout\);

-- Location: FF_X35_Y19_N29
\a21|mem2_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(34));

-- Location: LCCOMB_X35_Y19_N4
\a21|mem2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2~51\ = (\a21|mem2~26_combout\) # (!\a21|mem2_rtl_0_bypass\(34))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a21|mem2_rtl_0_bypass\(34),
	datad => \a21|mem2~26_combout\,
	combout => \a21|mem2~51\);

-- Location: LCCOMB_X31_Y19_N12
\a11|B_outreg~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~91_combout\ = (\a20|W_outreg\(11) & (\a19|P2~combout\ & !\a19|P0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a20|W_outreg\(11),
	datab => \a19|P2~combout\,
	datad => \a19|P0~2_combout\,
	combout => \a11|B_outreg~91_combout\);

-- Location: LCCOMB_X34_Y19_N0
\a21|mem2_rtl_0_bypass[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[36]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \a21|mem2_rtl_0_bypass[36]~feeder_combout\);

-- Location: FF_X34_Y19_N1
\a21|mem2_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(36));

-- Location: LCCOMB_X34_Y19_N30
\a21|mem2~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2~50\ = (\a21|mem2~26_combout\) # (!\a21|mem2_rtl_0_bypass\(36))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a21|mem2_rtl_0_bypass\(36),
	datad => \a21|mem2~26_combout\,
	combout => \a21|mem2~50\);

-- Location: LCCOMB_X36_Y22_N6
\a12|alu2_b[12]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|alu2_b[12]~9_combout\ = (\a11|EX_cont_outreg\(7) & (\a11|B_outreg\(12))) # (!\a11|EX_cont_outreg\(7) & ((\a11|se16reg\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a11|B_outreg\(12),
	datac => \a11|EX_cont_outreg\(7),
	datad => \a11|se16reg\(10),
	combout => \a12|alu2_b[12]~9_combout\);

-- Location: LCCOMB_X32_Y22_N12
\a21|mem2_rtl_0_bypass[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[38]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \a21|mem2_rtl_0_bypass[38]~feeder_combout\);

-- Location: FF_X32_Y22_N13
\a21|mem2_rtl_0_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(38));

-- Location: FF_X32_Y22_N25
\a21|mem2_rtl_0_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a20|W_outreg\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(37));

-- Location: LCCOMB_X32_Y19_N16
\a12|alu2_b[13]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|alu2_b[13]~8_combout\ = (\a11|EX_cont_outreg\(7) & (\a11|B_outreg\(13))) # (!\a11|EX_cont_outreg\(7) & ((\a11|se16reg\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a11|B_outreg\(13),
	datac => \a11|se16reg\(10),
	datad => \a11|EX_cont_outreg\(7),
	combout => \a12|alu2_b[13]~8_combout\);

-- Location: LCCOMB_X32_Y19_N30
\a21|mem2_rtl_0_bypass[39]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[39]~feeder_combout\ = \a20|W_outreg\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a20|W_outreg\(13),
	combout => \a21|mem2_rtl_0_bypass[39]~feeder_combout\);

-- Location: FF_X32_Y19_N31
\a21|mem2_rtl_0_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[39]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(39));

-- Location: LCCOMB_X38_Y19_N26
\a21|mem2_rtl_0_bypass[41]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[41]~feeder_combout\ = \a20|W_outreg\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a20|W_outreg\(14),
	combout => \a21|mem2_rtl_0_bypass[41]~feeder_combout\);

-- Location: FF_X38_Y19_N27
\a21|mem2_rtl_0_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[41]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(41));

-- Location: LCCOMB_X37_Y19_N12
\a21|mem2_rtl_0_bypass[42]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[42]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \a21|mem2_rtl_0_bypass[42]~feeder_combout\);

-- Location: FF_X37_Y19_N13
\a21|mem2_rtl_0_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(42));

-- Location: LCCOMB_X38_Y19_N4
\a21|mem2~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2~54\ = (\a21|mem2~26_combout\) # (!\a21|mem2_rtl_0_bypass\(42))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a21|mem2_rtl_0_bypass\(42),
	datad => \a21|mem2~26_combout\,
	combout => \a21|mem2~54\);

-- Location: LCCOMB_X31_Y19_N30
\a11|B_outreg~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~136_combout\ = (\a19|P0~2_combout\ & (((\a12|Add0~30_combout\)))) # (!\a19|P0~2_combout\ & (\a20|W_outreg\(15) & ((\a19|P2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a19|P0~2_combout\,
	datab => \a20|W_outreg\(15),
	datac => \a12|Add0~30_combout\,
	datad => \a19|P2~combout\,
	combout => \a11|B_outreg~136_combout\);

-- Location: LCCOMB_X34_Y19_N14
\a21|mem2_rtl_0_bypass[44]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[44]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \a21|mem2_rtl_0_bypass[44]~feeder_combout\);

-- Location: FF_X34_Y19_N15
\a21|mem2_rtl_0_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(44));

-- Location: LCCOMB_X34_Y19_N12
\a21|mem2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2~55\ = (\a21|mem2~26_combout\) # (!\a21|mem2_rtl_0_bypass\(44))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a21|mem2_rtl_0_bypass\(44),
	datad => \a21|mem2~26_combout\,
	combout => \a21|mem2~55\);

-- Location: LCCOMB_X34_Y19_N28
\a21|mem2_rtl_0_bypass[43]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[43]~feeder_combout\ = \a20|W_outreg\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a20|W_outreg\(15),
	combout => \a21|mem2_rtl_0_bypass[43]~feeder_combout\);

-- Location: FF_X34_Y19_N29
\a21|mem2_rtl_0_bypass[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[43]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(43));

-- Location: M9K_X33_Y19_N0
\a21|mem2_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"0000000060000000060000000060000000060000000060000000060000000060",
	mem_init0 => X"00000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000006000000005000000006000000006000000006000000006000000B48000000A40000000A40000000A40000000B60000000044",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/alu2.ram0_mem2_392d20.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem2:a21|altsyncram:mem2_rtl_0|altsyncram_43g1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \a21|process_0~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \a21|process_0~0_combout\,
	portadatain => \a21|mem2_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \a21|mem2_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \a21|mem2_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \a21|mem2_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X34_Y19_N18
\a22|i5_W2_outreg[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \a22|i5_W2_outreg[15]~15_combout\ = (\a21|mem2~55\ & (\a21|mem2_rtl_0_bypass\(43))) # (!\a21|mem2~55\ & ((\a21|mem2_rtl_0|auto_generated|ram_block1a15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a21|mem2~55\,
	datab => \a21|mem2_rtl_0_bypass\(43),
	datad => \a21|mem2_rtl_0|auto_generated|ram_block1a15\,
	combout => \a22|i5_W2_outreg[15]~15_combout\);

-- Location: FF_X34_Y19_N19
\a22|i5_W2_outreg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a22|i5_W2_outreg[15]~15_combout\,
	asdata => \a20|W_outreg\(15),
	sload => \a20|ALT_INV_MEM_contreg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a22|i5_W2_outreg\(15));

-- Location: FF_X32_Y18_N1
\a8|RAM[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(15),
	sload => VCC,
	ena => \a8|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[6][15]~q\);

-- Location: FF_X32_Y18_N31
\a8|RAM[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(15),
	sload => VCC,
	ena => \a8|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[4][15]~q\);

-- Location: LCCOMB_X32_Y18_N30
\a11|B_outreg~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~130_combout\ = (\a7|rf_a2reg\(0) & (((\a7|rf_a2reg\(1))))) # (!\a7|rf_a2reg\(0) & ((\a7|rf_a2reg\(1) & (\a8|RAM[6][15]~q\)) # (!\a7|rf_a2reg\(1) & ((\a8|RAM[4][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(0),
	datab => \a8|RAM[6][15]~q\,
	datac => \a8|RAM[4][15]~q\,
	datad => \a7|rf_a2reg\(1),
	combout => \a11|B_outreg~130_combout\);

-- Location: LCCOMB_X31_Y20_N18
\a8|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \a8|Decoder0~7_combout\ = (\a22|i5_destreg\(1) & (\a22|i5_destreg\(0) & \a22|i5_destreg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a22|i5_destreg\(1),
	datac => \a22|i5_destreg\(0),
	datad => \a22|i5_destreg\(2),
	combout => \a8|Decoder0~7_combout\);

-- Location: FF_X31_Y17_N27
\a8|RAM[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(15),
	sload => VCC,
	ena => \a8|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[7][15]~q\);

-- Location: FF_X31_Y17_N29
\a8|RAM[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(15),
	sload => VCC,
	ena => \a8|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[5][15]~q\);

-- Location: LCCOMB_X31_Y17_N26
\a11|B_outreg~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~131_combout\ = (\a7|rf_a2reg\(0) & ((\a11|B_outreg~130_combout\ & (\a8|RAM[7][15]~q\)) # (!\a11|B_outreg~130_combout\ & ((\a8|RAM[5][15]~q\))))) # (!\a7|rf_a2reg\(0) & (\a11|B_outreg~130_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(0),
	datab => \a11|B_outreg~130_combout\,
	datac => \a8|RAM[7][15]~q\,
	datad => \a8|RAM[5][15]~q\,
	combout => \a11|B_outreg~131_combout\);

-- Location: FF_X30_Y19_N19
\a8|RAM[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(15),
	sload => VCC,
	ena => \a8|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[3][15]~q\);

-- Location: FF_X30_Y19_N9
\a8|RAM[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(15),
	sload => VCC,
	ena => \a8|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[2][15]~q\);

-- Location: FF_X30_Y20_N7
\a8|RAM[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(15),
	sload => VCC,
	ena => \a8|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[0][15]~q\);

-- Location: FF_X30_Y20_N21
\a8|RAM[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(15),
	sload => VCC,
	ena => \a8|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[1][15]~q\);

-- Location: LCCOMB_X30_Y20_N8
\a11|B_outreg~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~128_combout\ = (\a7|rf_a2reg\(1) & (((\a7|rf_a2reg\(0))))) # (!\a7|rf_a2reg\(1) & ((\a7|rf_a2reg\(0) & ((\a8|RAM[1][15]~q\))) # (!\a7|rf_a2reg\(0) & (\a8|RAM[0][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[0][15]~q\,
	datab => \a8|RAM[1][15]~q\,
	datac => \a7|rf_a2reg\(1),
	datad => \a7|rf_a2reg\(0),
	combout => \a11|B_outreg~128_combout\);

-- Location: LCCOMB_X30_Y19_N8
\a11|B_outreg~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~129_combout\ = (\a7|rf_a2reg\(1) & ((\a11|B_outreg~128_combout\ & (\a8|RAM[3][15]~q\)) # (!\a11|B_outreg~128_combout\ & ((\a8|RAM[2][15]~q\))))) # (!\a7|rf_a2reg\(1) & (((\a11|B_outreg~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[3][15]~q\,
	datab => \a7|rf_a2reg\(1),
	datac => \a8|RAM[2][15]~q\,
	datad => \a11|B_outreg~128_combout\,
	combout => \a11|B_outreg~129_combout\);

-- Location: LCCOMB_X34_Y19_N24
\a11|B_outreg~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~132_combout\ = (\a11|B_outreg[10]~10_combout\ & ((\a11|B_outreg[10]~7_combout\ & (\a11|B_outreg~131_combout\)) # (!\a11|B_outreg[10]~7_combout\ & ((\a11|B_outreg~129_combout\))))) # (!\a11|B_outreg[10]~10_combout\ & 
-- (\a11|B_outreg[10]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg[10]~10_combout\,
	datab => \a11|B_outreg[10]~7_combout\,
	datac => \a11|B_outreg~131_combout\,
	datad => \a11|B_outreg~129_combout\,
	combout => \a11|B_outreg~132_combout\);

-- Location: LCCOMB_X34_Y19_N2
\a21|mem2_d1_out[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_d1_out[15]~15_combout\ = (\a20|MEM_contreg\(0) & \a22|i5_W2_outreg[15]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a20|MEM_contreg\(0),
	datad => \a22|i5_W2_outreg[15]~15_combout\,
	combout => \a21|mem2_d1_out[15]~15_combout\);

-- Location: LCCOMB_X34_Y19_N22
\a11|B_outreg~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~133_combout\ = (\a11|B_outreg~132_combout\ & (((\a11|B_outreg[10]~10_combout\) # (\a21|mem2_d1_out[15]~15_combout\)))) # (!\a11|B_outreg~132_combout\ & (\a22|i5_W2_outreg\(15) & (!\a11|B_outreg[10]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a22|i5_W2_outreg\(15),
	datab => \a11|B_outreg~132_combout\,
	datac => \a11|B_outreg[10]~10_combout\,
	datad => \a21|mem2_d1_out[15]~15_combout\,
	combout => \a11|B_outreg~133_combout\);

-- Location: LCCOMB_X31_Y19_N24
\a11|B_outreg~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~137_combout\ = (\a11|B_outreg~136_combout\) # ((\a11|B_outreg~73_combout\ & \a11|B_outreg~133_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~73_combout\,
	datac => \a11|B_outreg~136_combout\,
	datad => \a11|B_outreg~133_combout\,
	combout => \a11|B_outreg~137_combout\);

-- Location: FF_X31_Y19_N25
\a11|B_outreg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|B_outreg~137_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|B_outreg\(15));

-- Location: LCCOMB_X32_Y19_N24
\a12|alu2_b[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|alu2_b[15]~15_combout\ = (\a11|EX_cont_outreg\(7) & (\a11|B_outreg\(15))) # (!\a11|EX_cont_outreg\(7) & ((\a11|se16reg\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a11|B_outreg\(15),
	datac => \a11|se16reg\(10),
	datad => \a11|EX_cont_outreg\(7),
	combout => \a12|alu2_b[15]~15_combout\);

-- Location: LCCOMB_X32_Y18_N0
\a11|A_outreg~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~120_combout\ = (\a7|rf_a1reg\(1) & (((\a8|RAM[6][15]~q\) # (\a7|rf_a1reg\(0))))) # (!\a7|rf_a1reg\(1) & (\a8|RAM[4][15]~q\ & ((!\a7|rf_a1reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[4][15]~q\,
	datab => \a7|rf_a1reg\(1),
	datac => \a8|RAM[6][15]~q\,
	datad => \a7|rf_a1reg\(0),
	combout => \a11|A_outreg~120_combout\);

-- Location: LCCOMB_X31_Y17_N28
\a11|A_outreg~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~121_combout\ = (\a7|rf_a1reg\(0) & ((\a11|A_outreg~120_combout\ & (\a8|RAM[7][15]~q\)) # (!\a11|A_outreg~120_combout\ & ((\a8|RAM[5][15]~q\))))) # (!\a7|rf_a1reg\(0) & (((\a11|A_outreg~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[7][15]~q\,
	datab => \a7|rf_a1reg\(0),
	datac => \a8|RAM[5][15]~q\,
	datad => \a11|A_outreg~120_combout\,
	combout => \a11|A_outreg~121_combout\);

-- Location: LCCOMB_X30_Y20_N30
\a11|A_outreg~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~117_combout\ = (\a7|rf_a1reg\(0) & (((\a8|RAM[1][15]~q\) # (\a7|rf_a1reg\(1))))) # (!\a7|rf_a1reg\(0) & (\a8|RAM[0][15]~q\ & ((!\a7|rf_a1reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[0][15]~q\,
	datab => \a8|RAM[1][15]~q\,
	datac => \a7|rf_a1reg\(0),
	datad => \a7|rf_a1reg\(1),
	combout => \a11|A_outreg~117_combout\);

-- Location: LCCOMB_X30_Y19_N18
\a11|A_outreg~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~118_combout\ = (\a11|A_outreg~117_combout\ & (((\a8|RAM[3][15]~q\) # (!\a7|rf_a1reg\(1))))) # (!\a11|A_outreg~117_combout\ & (\a8|RAM[2][15]~q\ & ((\a7|rf_a1reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg~117_combout\,
	datab => \a8|RAM[2][15]~q\,
	datac => \a8|RAM[3][15]~q\,
	datad => \a7|rf_a1reg\(1),
	combout => \a11|A_outreg~118_combout\);

-- Location: LCCOMB_X34_Y19_N8
\a11|A_outreg~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~119_combout\ = (\a11|A_outreg[7]~12_combout\ & (((\a11|A_outreg[7]~11_combout\)))) # (!\a11|A_outreg[7]~12_combout\ & ((\a11|A_outreg[7]~11_combout\ & ((\a11|A_outreg~118_combout\))) # (!\a11|A_outreg[7]~11_combout\ & 
-- (\a22|i5_W2_outreg\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a22|i5_W2_outreg\(15),
	datab => \a11|A_outreg~118_combout\,
	datac => \a11|A_outreg[7]~12_combout\,
	datad => \a11|A_outreg[7]~11_combout\,
	combout => \a11|A_outreg~119_combout\);

-- Location: LCCOMB_X34_Y19_N26
\a11|A_outreg~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~122_combout\ = (\a11|A_outreg[7]~12_combout\ & ((\a11|A_outreg~119_combout\ & (\a11|A_outreg~121_combout\)) # (!\a11|A_outreg~119_combout\ & ((\a21|mem2_d1_out[15]~15_combout\))))) # (!\a11|A_outreg[7]~12_combout\ & 
-- (((\a11|A_outreg~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg~121_combout\,
	datab => \a11|A_outreg[7]~12_combout\,
	datac => \a11|A_outreg~119_combout\,
	datad => \a21|mem2_d1_out[15]~15_combout\,
	combout => \a11|A_outreg~122_combout\);

-- Location: LCCOMB_X31_Y19_N0
\a11|A_outreg~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~123_combout\ = (!\a19|N0~4_combout\ & ((\a19|N2~0_combout\ & (\a20|W_outreg\(15))) # (!\a19|N2~0_combout\ & ((\a11|A_outreg~122_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a19|N0~4_combout\,
	datab => \a20|W_outreg\(15),
	datac => \a19|N2~0_combout\,
	datad => \a11|A_outreg~122_combout\,
	combout => \a11|A_outreg~123_combout\);

-- Location: LCCOMB_X31_Y19_N18
\a11|A_outreg~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~124_combout\ = (\a11|A_outreg~123_combout\) # ((\a19|N0~4_combout\ & \a12|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a19|N0~4_combout\,
	datac => \a12|Add0~30_combout\,
	datad => \a11|A_outreg~123_combout\,
	combout => \a11|A_outreg~124_combout\);

-- Location: FF_X31_Y19_N19
\a11|A_outreg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|A_outreg~124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|A_outreg\(15));

-- Location: LCCOMB_X37_Y19_N24
\a12|alu2_b[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|alu2_b[14]~14_combout\ = (\a11|EX_cont_outreg\(7) & ((\a11|B_outreg\(14)))) # (!\a11|EX_cont_outreg\(7) & (\a11|se16reg\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a11|se16reg\(10),
	datac => \a11|B_outreg\(14),
	datad => \a11|EX_cont_outreg\(7),
	combout => \a12|alu2_b[14]~14_combout\);

-- Location: FF_X31_Y18_N27
\a8|RAM[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(11),
	sload => VCC,
	ena => \a8|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[7][11]~q\);

-- Location: FF_X32_Y18_N5
\a8|RAM[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(11),
	sload => VCC,
	ena => \a8|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[6][11]~q\);

-- Location: FF_X32_Y18_N15
\a8|RAM[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(11),
	sload => VCC,
	ena => \a8|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[4][11]~q\);

-- Location: LCCOMB_X32_Y18_N14
\a11|A_outreg~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~80_combout\ = (\a7|rf_a1reg\(0) & (((\a7|rf_a1reg\(1))))) # (!\a7|rf_a1reg\(0) & ((\a7|rf_a1reg\(1) & (\a8|RAM[6][11]~q\)) # (!\a7|rf_a1reg\(1) & ((\a8|RAM[4][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a1reg\(0),
	datab => \a8|RAM[6][11]~q\,
	datac => \a8|RAM[4][11]~q\,
	datad => \a7|rf_a1reg\(1),
	combout => \a11|A_outreg~80_combout\);

-- Location: LCCOMB_X31_Y18_N0
\a11|A_outreg~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~81_combout\ = (\a11|A_outreg~80_combout\ & ((\a8|RAM[7][11]~q\) # ((!\a7|rf_a1reg\(0))))) # (!\a11|A_outreg~80_combout\ & (((\a8|RAM[5][11]~q\ & \a7|rf_a1reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[7][11]~q\,
	datab => \a11|A_outreg~80_combout\,
	datac => \a8|RAM[5][11]~q\,
	datad => \a7|rf_a1reg\(0),
	combout => \a11|A_outreg~81_combout\);

-- Location: FF_X30_Y19_N17
\a8|RAM[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(11),
	sload => VCC,
	ena => \a8|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[2][11]~q\);

-- Location: FF_X30_Y19_N15
\a8|RAM[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(11),
	sload => VCC,
	ena => \a8|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[3][11]~q\);

-- Location: FF_X29_Y19_N9
\a8|RAM[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(11),
	sload => VCC,
	ena => \a8|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[1][11]~q\);

-- Location: FF_X29_Y19_N3
\a8|RAM[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(11),
	sload => VCC,
	ena => \a8|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[0][11]~q\);

-- Location: LCCOMB_X29_Y19_N2
\a11|A_outreg~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~77_combout\ = (\a7|rf_a1reg\(0) & ((\a8|RAM[1][11]~q\) # ((\a7|rf_a1reg\(1))))) # (!\a7|rf_a1reg\(0) & (((\a8|RAM[0][11]~q\ & !\a7|rf_a1reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a1reg\(0),
	datab => \a8|RAM[1][11]~q\,
	datac => \a8|RAM[0][11]~q\,
	datad => \a7|rf_a1reg\(1),
	combout => \a11|A_outreg~77_combout\);

-- Location: LCCOMB_X30_Y19_N14
\a11|A_outreg~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~78_combout\ = (\a7|rf_a1reg\(1) & ((\a11|A_outreg~77_combout\ & ((\a8|RAM[3][11]~q\))) # (!\a11|A_outreg~77_combout\ & (\a8|RAM[2][11]~q\)))) # (!\a7|rf_a1reg\(1) & (((\a11|A_outreg~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a1reg\(1),
	datab => \a8|RAM[2][11]~q\,
	datac => \a8|RAM[3][11]~q\,
	datad => \a11|A_outreg~77_combout\,
	combout => \a11|A_outreg~78_combout\);

-- Location: LCCOMB_X31_Y19_N4
\a11|A_outreg~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~79_combout\ = (\a11|A_outreg[7]~12_combout\ & (((\a11|A_outreg[7]~11_combout\)))) # (!\a11|A_outreg[7]~12_combout\ & ((\a11|A_outreg[7]~11_combout\ & ((\a11|A_outreg~78_combout\))) # (!\a11|A_outreg[7]~11_combout\ & 
-- (\a22|i5_W2_outreg\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a22|i5_W2_outreg\(11),
	datab => \a11|A_outreg[7]~12_combout\,
	datac => \a11|A_outreg[7]~11_combout\,
	datad => \a11|A_outreg~78_combout\,
	combout => \a11|A_outreg~79_combout\);

-- Location: LCCOMB_X34_Y19_N16
\a21|mem2_d1_out[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_d1_out[11]~10_combout\ = (\a20|MEM_contreg\(0) & \a22|i5_W2_outreg[11]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a20|MEM_contreg\(0),
	datad => \a22|i5_W2_outreg[11]~11_combout\,
	combout => \a21|mem2_d1_out[11]~10_combout\);

-- Location: LCCOMB_X31_Y19_N2
\a11|A_outreg~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~82_combout\ = (\a11|A_outreg~79_combout\ & ((\a11|A_outreg~81_combout\) # ((!\a11|A_outreg[7]~12_combout\)))) # (!\a11|A_outreg~79_combout\ & (((\a11|A_outreg[7]~12_combout\ & \a21|mem2_d1_out[11]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg~81_combout\,
	datab => \a11|A_outreg~79_combout\,
	datac => \a11|A_outreg[7]~12_combout\,
	datad => \a21|mem2_d1_out[11]~10_combout\,
	combout => \a11|A_outreg~82_combout\);

-- Location: LCCOMB_X31_Y19_N16
\a11|A_outreg~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~83_combout\ = (!\a19|N0~4_combout\ & ((\a19|N2~0_combout\ & (\a20|W_outreg\(11))) # (!\a19|N2~0_combout\ & ((\a11|A_outreg~82_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a20|W_outreg\(11),
	datab => \a19|N0~4_combout\,
	datac => \a19|N2~0_combout\,
	datad => \a11|A_outreg~82_combout\,
	combout => \a11|A_outreg~83_combout\);

-- Location: LCCOMB_X31_Y19_N26
\a11|A_outreg~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~84_combout\ = (\a11|A_outreg~83_combout\) # ((\a19|N0~4_combout\ & \a12|Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a19|N0~4_combout\,
	datac => \a12|Add0~22_combout\,
	datad => \a11|A_outreg~83_combout\,
	combout => \a11|A_outreg~84_combout\);

-- Location: FF_X31_Y19_N27
\a11|A_outreg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|A_outreg~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|A_outreg\(11));

-- Location: LCCOMB_X36_Y19_N24
\a12|alu2_b[9]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|alu2_b[9]~12_combout\ = (\a11|EX_cont_outreg\(7) & ((\a11|B_outreg\(9)))) # (!\a11|EX_cont_outreg\(7) & (\a11|se16reg\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a11|se16reg\(10),
	datac => \a11|EX_cont_outreg\(7),
	datad => \a11|B_outreg\(9),
	combout => \a12|alu2_b[9]~12_combout\);

-- Location: FF_X30_Y19_N27
\a8|RAM[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(8),
	sload => VCC,
	ena => \a8|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[3][8]~q\);

-- Location: FF_X30_Y18_N13
\a8|RAM[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(8),
	sload => VCC,
	ena => \a8|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[1][8]~q\);

-- Location: FF_X30_Y18_N15
\a8|RAM[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(8),
	sload => VCC,
	ena => \a8|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[0][8]~q\);

-- Location: LCCOMB_X30_Y18_N14
\a11|A_outreg~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~101_combout\ = (\a7|rf_a1reg\(0) & ((\a8|RAM[1][8]~q\) # ((\a7|rf_a1reg\(1))))) # (!\a7|rf_a1reg\(0) & (((\a8|RAM[0][8]~q\ & !\a7|rf_a1reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a1reg\(0),
	datab => \a8|RAM[1][8]~q\,
	datac => \a8|RAM[0][8]~q\,
	datad => \a7|rf_a1reg\(1),
	combout => \a11|A_outreg~101_combout\);

-- Location: FF_X30_Y19_N5
\a8|RAM[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(8),
	sload => VCC,
	ena => \a8|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[2][8]~q\);

-- Location: LCCOMB_X30_Y19_N4
\a11|A_outreg~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~102_combout\ = (\a11|A_outreg~101_combout\ & ((\a8|RAM[3][8]~q\) # ((!\a7|rf_a1reg\(1))))) # (!\a11|A_outreg~101_combout\ & (((\a8|RAM[2][8]~q\ & \a7|rf_a1reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[3][8]~q\,
	datab => \a11|A_outreg~101_combout\,
	datac => \a8|RAM[2][8]~q\,
	datad => \a7|rf_a1reg\(1),
	combout => \a11|A_outreg~102_combout\);

-- Location: FF_X31_Y18_N23
\a8|RAM[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(8),
	sload => VCC,
	ena => \a8|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[7][8]~q\);

-- Location: FF_X32_Y18_N17
\a8|RAM[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(8),
	sload => VCC,
	ena => \a8|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[6][8]~q\);

-- Location: FF_X32_Y18_N27
\a8|RAM[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(8),
	sload => VCC,
	ena => \a8|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[4][8]~q\);

-- Location: LCCOMB_X32_Y18_N26
\a11|A_outreg~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~104_combout\ = (\a7|rf_a1reg\(0) & (((\a7|rf_a1reg\(1))))) # (!\a7|rf_a1reg\(0) & ((\a7|rf_a1reg\(1) & (\a8|RAM[6][8]~q\)) # (!\a7|rf_a1reg\(1) & ((\a8|RAM[4][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a1reg\(0),
	datab => \a8|RAM[6][8]~q\,
	datac => \a8|RAM[4][8]~q\,
	datad => \a7|rf_a1reg\(1),
	combout => \a11|A_outreg~104_combout\);

-- Location: LCCOMB_X31_Y18_N8
\a11|A_outreg~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~105_combout\ = (\a11|A_outreg~104_combout\ & ((\a8|RAM[7][8]~q\) # ((!\a7|rf_a1reg\(0))))) # (!\a11|A_outreg~104_combout\ & (((\a8|RAM[5][8]~q\ & \a7|rf_a1reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[7][8]~q\,
	datab => \a11|A_outreg~104_combout\,
	datac => \a8|RAM[5][8]~q\,
	datad => \a7|rf_a1reg\(0),
	combout => \a11|A_outreg~105_combout\);

-- Location: LCCOMB_X37_Y19_N0
\a21|mem2_d1_out[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_d1_out[8]~13_combout\ = (\a20|MEM_contreg\(0) & \a22|i5_W2_outreg[8]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a20|MEM_contreg\(0),
	datad => \a22|i5_W2_outreg[8]~8_combout\,
	combout => \a21|mem2_d1_out[8]~13_combout\);

-- Location: LCCOMB_X37_Y19_N28
\a11|A_outreg~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~103_combout\ = (\a11|A_outreg[7]~12_combout\ & (((\a11|A_outreg[7]~11_combout\) # (\a21|mem2_d1_out[8]~13_combout\)))) # (!\a11|A_outreg[7]~12_combout\ & (\a22|i5_W2_outreg\(8) & (!\a11|A_outreg[7]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a22|i5_W2_outreg\(8),
	datab => \a11|A_outreg[7]~12_combout\,
	datac => \a11|A_outreg[7]~11_combout\,
	datad => \a21|mem2_d1_out[8]~13_combout\,
	combout => \a11|A_outreg~103_combout\);

-- Location: LCCOMB_X37_Y19_N20
\a11|A_outreg~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~106_combout\ = (\a11|A_outreg[7]~11_combout\ & ((\a11|A_outreg~103_combout\ & ((\a11|A_outreg~105_combout\))) # (!\a11|A_outreg~103_combout\ & (\a11|A_outreg~102_combout\)))) # (!\a11|A_outreg[7]~11_combout\ & 
-- (((\a11|A_outreg~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg~102_combout\,
	datab => \a11|A_outreg[7]~11_combout\,
	datac => \a11|A_outreg~105_combout\,
	datad => \a11|A_outreg~103_combout\,
	combout => \a11|A_outreg~106_combout\);

-- Location: LCCOMB_X37_Y19_N16
\a11|A_outreg~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~107_combout\ = (!\a19|N0~4_combout\ & ((\a19|N2~0_combout\ & (\a20|W_outreg\(8))) # (!\a19|N2~0_combout\ & ((\a11|A_outreg~106_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a19|N2~0_combout\,
	datab => \a19|N0~4_combout\,
	datac => \a20|W_outreg\(8),
	datad => \a11|A_outreg~106_combout\,
	combout => \a11|A_outreg~107_combout\);

-- Location: LCCOMB_X37_Y19_N8
\a11|A_outreg~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~108_combout\ = (\a11|A_outreg~107_combout\) # ((\a19|N0~4_combout\ & \a12|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a19|N0~4_combout\,
	datac => \a12|Add0~16_combout\,
	datad => \a11|A_outreg~107_combout\,
	combout => \a11|A_outreg~108_combout\);

-- Location: FF_X37_Y19_N9
\a11|A_outreg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|A_outreg~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|A_outreg\(8));

-- Location: LCCOMB_X36_Y20_N2
\a12|alu2_b[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|alu2_b[7]~7_combout\ = (\a11|EX_cont_outreg\(7) & ((\a11|B_outreg\(7)))) # (!\a11|EX_cont_outreg\(7) & (\a11|se16reg\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|EX_cont_outreg\(7),
	datab => \a11|se16reg\(10),
	datad => \a11|B_outreg\(7),
	combout => \a12|alu2_b[7]~7_combout\);

-- Location: FF_X31_Y17_N15
\a8|RAM[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(5),
	sload => VCC,
	ena => \a8|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[7][5]~q\);

-- Location: FF_X32_Y17_N25
\a8|RAM[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(5),
	sload => VCC,
	ena => \a8|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[4][5]~q\);

-- Location: FF_X32_Y17_N19
\a8|RAM[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(5),
	sload => VCC,
	ena => \a8|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[6][5]~q\);

-- Location: LCCOMB_X32_Y17_N18
\a11|A_outreg~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~44_combout\ = (\a7|rf_a1reg\(0) & (((\a7|rf_a1reg\(1))))) # (!\a7|rf_a1reg\(0) & ((\a7|rf_a1reg\(1) & ((\a8|RAM[6][5]~q\))) # (!\a7|rf_a1reg\(1) & (\a8|RAM[4][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a1reg\(0),
	datab => \a8|RAM[4][5]~q\,
	datac => \a8|RAM[6][5]~q\,
	datad => \a7|rf_a1reg\(1),
	combout => \a11|A_outreg~44_combout\);

-- Location: LCCOMB_X31_Y17_N24
\a11|A_outreg~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~45_combout\ = (\a7|rf_a1reg\(0) & ((\a11|A_outreg~44_combout\ & (\a8|RAM[7][5]~q\)) # (!\a11|A_outreg~44_combout\ & ((\a8|RAM[5][5]~q\))))) # (!\a7|rf_a1reg\(0) & (((\a11|A_outreg~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a1reg\(0),
	datab => \a8|RAM[7][5]~q\,
	datac => \a8|RAM[5][5]~q\,
	datad => \a11|A_outreg~44_combout\,
	combout => \a11|A_outreg~45_combout\);

-- Location: FF_X31_Y20_N11
\a8|RAM[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(5),
	sload => VCC,
	ena => \a8|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[2][5]~q\);

-- Location: FF_X31_Y20_N17
\a8|RAM[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(5),
	sload => VCC,
	ena => \a8|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[3][5]~q\);

-- Location: FF_X30_Y20_N11
\a8|RAM[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(5),
	sload => VCC,
	ena => \a8|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[1][5]~q\);

-- Location: FF_X30_Y20_N13
\a8|RAM[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(5),
	sload => VCC,
	ena => \a8|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[0][5]~q\);

-- Location: LCCOMB_X30_Y20_N10
\a11|A_outreg~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~41_combout\ = (\a7|rf_a1reg\(0) & ((\a7|rf_a1reg\(1)) # ((\a8|RAM[1][5]~q\)))) # (!\a7|rf_a1reg\(0) & (!\a7|rf_a1reg\(1) & ((\a8|RAM[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a1reg\(0),
	datab => \a7|rf_a1reg\(1),
	datac => \a8|RAM[1][5]~q\,
	datad => \a8|RAM[0][5]~q\,
	combout => \a11|A_outreg~41_combout\);

-- Location: LCCOMB_X31_Y20_N16
\a11|A_outreg~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~42_combout\ = (\a7|rf_a1reg\(1) & ((\a11|A_outreg~41_combout\ & ((\a8|RAM[3][5]~q\))) # (!\a11|A_outreg~41_combout\ & (\a8|RAM[2][5]~q\)))) # (!\a7|rf_a1reg\(1) & (((\a11|A_outreg~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[2][5]~q\,
	datab => \a7|rf_a1reg\(1),
	datac => \a8|RAM[3][5]~q\,
	datad => \a11|A_outreg~41_combout\,
	combout => \a11|A_outreg~42_combout\);

-- Location: LCCOMB_X34_Y17_N4
\a11|A_outreg~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~43_combout\ = (\a11|A_outreg[7]~11_combout\ & ((\a11|A_outreg~42_combout\) # ((\a11|A_outreg[7]~12_combout\)))) # (!\a11|A_outreg[7]~11_combout\ & (((\a22|i5_W2_outreg\(5) & !\a11|A_outreg[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg[7]~11_combout\,
	datab => \a11|A_outreg~42_combout\,
	datac => \a22|i5_W2_outreg\(5),
	datad => \a11|A_outreg[7]~12_combout\,
	combout => \a11|A_outreg~43_combout\);

-- Location: LCCOMB_X34_Y17_N28
\a21|mem2_d1_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_d1_out[5]~5_combout\ = (\a20|MEM_contreg\(0) & \a22|i5_W2_outreg[5]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a20|MEM_contreg\(0),
	datad => \a22|i5_W2_outreg[5]~5_combout\,
	combout => \a21|mem2_d1_out[5]~5_combout\);

-- Location: LCCOMB_X34_Y17_N2
\a11|A_outreg~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~46_combout\ = (\a11|A_outreg[7]~12_combout\ & ((\a11|A_outreg~43_combout\ & (\a11|A_outreg~45_combout\)) # (!\a11|A_outreg~43_combout\ & ((\a21|mem2_d1_out[5]~5_combout\))))) # (!\a11|A_outreg[7]~12_combout\ & 
-- (((\a11|A_outreg~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg~45_combout\,
	datab => \a11|A_outreg[7]~12_combout\,
	datac => \a11|A_outreg~43_combout\,
	datad => \a21|mem2_d1_out[5]~5_combout\,
	combout => \a11|A_outreg~46_combout\);

-- Location: LCCOMB_X35_Y20_N22
\a11|A_outreg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg[5]~5_combout\ = (\a19|N2~0_combout\ & (\a20|W_outreg\(5))) # (!\a19|N2~0_combout\ & ((\a11|A_outreg~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a20|W_outreg\(5),
	datab => \a19|N2~0_combout\,
	datad => \a11|A_outreg~46_combout\,
	combout => \a11|A_outreg[5]~5_combout\);

-- Location: FF_X35_Y20_N23
\a11|A_outreg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|A_outreg[5]~5_combout\,
	asdata => \a12|Add0~10_combout\,
	sload => \a19|N0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|A_outreg\(5));

-- Location: LCCOMB_X32_Y20_N26
\a21|mem2_rtl_0_bypass[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[21]~feeder_combout\ = \a20|W_outreg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a20|W_outreg\(4),
	combout => \a21|mem2_rtl_0_bypass[21]~feeder_combout\);

-- Location: FF_X32_Y20_N27
\a21|mem2_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(21));

-- Location: LCCOMB_X29_Y20_N24
\a21|mem2_rtl_0_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \a21|mem2_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X29_Y20_N25
\a21|mem2_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(22));

-- Location: LCCOMB_X32_Y20_N4
\a21|mem2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2~45\ = (\a21|mem2~26_combout\) # (!\a21|mem2_rtl_0_bypass\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a21|mem2~26_combout\,
	datad => \a21|mem2_rtl_0_bypass\(22),
	combout => \a21|mem2~45\);

-- Location: LCCOMB_X32_Y20_N6
\a22|i5_W2_outreg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \a22|i5_W2_outreg[4]~4_combout\ = (\a21|mem2~45\ & (\a21|mem2_rtl_0_bypass\(21))) # (!\a21|mem2~45\ & ((\a21|mem2_rtl_0|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a21|mem2_rtl_0_bypass\(21),
	datab => \a21|mem2~45\,
	datad => \a21|mem2_rtl_0|auto_generated|ram_block1a4\,
	combout => \a22|i5_W2_outreg[4]~4_combout\);

-- Location: FF_X32_Y20_N7
\a22|i5_W2_outreg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a22|i5_W2_outreg[4]~4_combout\,
	asdata => \a20|W_outreg\(4),
	sload => \a20|ALT_INV_MEM_contreg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a22|i5_W2_outreg\(4));

-- Location: FF_X30_Y20_N5
\a8|RAM[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(4),
	sload => VCC,
	ena => \a8|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[0][4]~q\);

-- Location: FF_X30_Y20_N19
\a8|RAM[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(4),
	sload => VCC,
	ena => \a8|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[1][4]~q\);

-- Location: LCCOMB_X30_Y20_N4
\a11|B_outreg~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~42_combout\ = (\a7|rf_a2reg\(1) & (\a7|rf_a2reg\(0))) # (!\a7|rf_a2reg\(1) & ((\a7|rf_a2reg\(0) & ((\a8|RAM[1][4]~q\))) # (!\a7|rf_a2reg\(0) & (\a8|RAM[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(1),
	datab => \a7|rf_a2reg\(0),
	datac => \a8|RAM[0][4]~q\,
	datad => \a8|RAM[1][4]~q\,
	combout => \a11|B_outreg~42_combout\);

-- Location: FF_X31_Y20_N25
\a8|RAM[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(4),
	sload => VCC,
	ena => \a8|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[3][4]~q\);

-- Location: FF_X31_Y20_N3
\a8|RAM[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(4),
	sload => VCC,
	ena => \a8|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[2][4]~q\);

-- Location: LCCOMB_X31_Y20_N24
\a11|B_outreg~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~43_combout\ = (\a7|rf_a2reg\(1) & ((\a11|B_outreg~42_combout\ & (\a8|RAM[3][4]~q\)) # (!\a11|B_outreg~42_combout\ & ((\a8|RAM[2][4]~q\))))) # (!\a7|rf_a2reg\(1) & (\a11|B_outreg~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(1),
	datab => \a11|B_outreg~42_combout\,
	datac => \a8|RAM[3][4]~q\,
	datad => \a8|RAM[2][4]~q\,
	combout => \a11|B_outreg~43_combout\);

-- Location: LCCOMB_X32_Y20_N22
\a11|B_outreg~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~44_combout\ = (\a11|B_outreg[10]~10_combout\ & (((\a11|B_outreg~43_combout\) # (\a11|B_outreg[10]~7_combout\)))) # (!\a11|B_outreg[10]~10_combout\ & (\a22|i5_W2_outreg\(4) & ((!\a11|B_outreg[10]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a22|i5_W2_outreg\(4),
	datab => \a11|B_outreg~43_combout\,
	datac => \a11|B_outreg[10]~10_combout\,
	datad => \a11|B_outreg[10]~7_combout\,
	combout => \a11|B_outreg~44_combout\);

-- Location: FF_X31_Y17_N9
\a8|RAM[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(4),
	sload => VCC,
	ena => \a8|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[5][4]~q\);

-- Location: FF_X31_Y17_N7
\a8|RAM[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(4),
	sload => VCC,
	ena => \a8|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[7][4]~q\);

-- Location: FF_X32_Y17_N29
\a8|RAM[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(4),
	sload => VCC,
	ena => \a8|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[6][4]~q\);

-- Location: FF_X32_Y17_N27
\a8|RAM[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(4),
	sload => VCC,
	ena => \a8|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[4][4]~q\);

-- Location: LCCOMB_X32_Y17_N26
\a11|B_outreg~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~45_combout\ = (\a7|rf_a2reg\(1) & ((\a8|RAM[6][4]~q\) # ((\a7|rf_a2reg\(0))))) # (!\a7|rf_a2reg\(1) & (((\a8|RAM[4][4]~q\ & !\a7|rf_a2reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(1),
	datab => \a8|RAM[6][4]~q\,
	datac => \a8|RAM[4][4]~q\,
	datad => \a7|rf_a2reg\(0),
	combout => \a11|B_outreg~45_combout\);

-- Location: LCCOMB_X31_Y17_N6
\a11|B_outreg~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~46_combout\ = (\a7|rf_a2reg\(0) & ((\a11|B_outreg~45_combout\ & ((\a8|RAM[7][4]~q\))) # (!\a11|B_outreg~45_combout\ & (\a8|RAM[5][4]~q\)))) # (!\a7|rf_a2reg\(0) & (((\a11|B_outreg~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(0),
	datab => \a8|RAM[5][4]~q\,
	datac => \a8|RAM[7][4]~q\,
	datad => \a11|B_outreg~45_combout\,
	combout => \a11|B_outreg~46_combout\);

-- Location: LCCOMB_X32_Y20_N10
\a21|mem2_d1_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_d1_out[4]~4_combout\ = (\a20|MEM_contreg\(0) & \a22|i5_W2_outreg[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a20|MEM_contreg\(0),
	datad => \a22|i5_W2_outreg[4]~4_combout\,
	combout => \a21|mem2_d1_out[4]~4_combout\);

-- Location: LCCOMB_X32_Y20_N16
\a11|B_outreg~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~47_combout\ = (\a11|B_outreg~44_combout\ & (((\a11|B_outreg~46_combout\)) # (!\a11|B_outreg[10]~7_combout\))) # (!\a11|B_outreg~44_combout\ & (\a11|B_outreg[10]~7_combout\ & ((\a21|mem2_d1_out[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~44_combout\,
	datab => \a11|B_outreg[10]~7_combout\,
	datac => \a11|B_outreg~46_combout\,
	datad => \a21|mem2_d1_out[4]~4_combout\,
	combout => \a11|B_outreg~47_combout\);

-- Location: LCCOMB_X32_Y20_N12
\a11|B_outreg~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~48_combout\ = (\a11|B_outreg~134_combout\ & ((\a11|B_outreg~47_combout\) # ((\a20|W_outreg\(4) & \a11|B_outreg~135_combout\)))) # (!\a11|B_outreg~134_combout\ & (\a20|W_outreg\(4) & (\a11|B_outreg~135_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~134_combout\,
	datab => \a20|W_outreg\(4),
	datac => \a11|B_outreg~135_combout\,
	datad => \a11|B_outreg~47_combout\,
	combout => \a11|B_outreg~48_combout\);

-- Location: LCCOMB_X32_Y20_N14
\a11|B_outreg~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~49_combout\ = (\a11|B_outreg~48_combout\) # ((\a19|P0~2_combout\ & \a12|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a19|P0~2_combout\,
	datab => \a12|Add0~8_combout\,
	datad => \a11|B_outreg~48_combout\,
	combout => \a11|B_outreg~49_combout\);

-- Location: FF_X32_Y20_N15
\a11|B_outreg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|B_outreg~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|B_outreg\(4));

-- Location: LCCOMB_X38_Y21_N30
\a7|imm9reg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \a7|imm9reg~4_combout\ = (\a3|inter1reg\(30) & (\a5|treg\(4))) # (!\a3|inter1reg\(30) & ((\a3|inter1reg\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|treg\(4),
	datac => \a3|inter1reg\(30),
	datad => \a3|inter1reg\(21),
	combout => \a7|imm9reg~4_combout\);

-- Location: FF_X38_Y21_N31
\a7|imm9reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a7|imm9reg~4_combout\,
	ena => \a18|stall_cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|imm9reg\(4));

-- Location: LCCOMB_X37_Y20_N4
\a11|se16reg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|se16reg~4_combout\ = (\a7|imm9reg\(4) & \a7|OR_cont_outreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a7|imm9reg\(4),
	datad => \a7|OR_cont_outreg\(1),
	combout => \a11|se16reg~4_combout\);

-- Location: FF_X37_Y20_N5
\a11|se16reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|se16reg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|se16reg\(4));

-- Location: LCCOMB_X36_Y20_N14
\a12|alu2_b[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|alu2_b[4]~4_combout\ = (\a11|EX_cont_outreg\(7) & (\a11|B_outreg\(4))) # (!\a11|EX_cont_outreg\(7) & ((\a11|se16reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|EX_cont_outreg\(7),
	datab => \a11|B_outreg\(4),
	datad => \a11|se16reg\(4),
	combout => \a12|alu2_b[4]~4_combout\);

-- Location: LCCOMB_X36_Y21_N30
\a7|imm9reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \a7|imm9reg~3_combout\ = (\a3|inter1reg\(30) & ((\a5|treg\(3)))) # (!\a3|inter1reg\(30) & (\a3|inter1reg\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|inter1reg\(20),
	datab => \a3|inter1reg\(30),
	datad => \a5|treg\(3),
	combout => \a7|imm9reg~3_combout\);

-- Location: FF_X36_Y21_N31
\a7|imm9reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a7|imm9reg~3_combout\,
	ena => \a18|stall_cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|imm9reg\(3));

-- Location: LCCOMB_X37_Y20_N18
\a11|se16reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|se16reg~3_combout\ = (\a7|imm9reg\(3) & \a7|OR_cont_outreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|imm9reg\(3),
	datad => \a7|OR_cont_outreg\(1),
	combout => \a11|se16reg~3_combout\);

-- Location: FF_X37_Y20_N19
\a11|se16reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|se16reg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|se16reg\(3));

-- Location: LCCOMB_X36_Y20_N0
\a12|alu2_b[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|alu2_b[3]~3_combout\ = (\a11|EX_cont_outreg\(7) & (\a11|B_outreg\(3))) # (!\a11|EX_cont_outreg\(7) & ((\a11|se16reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a11|B_outreg\(3),
	datac => \a11|EX_cont_outreg\(7),
	datad => \a11|se16reg\(3),
	combout => \a12|alu2_b[3]~3_combout\);

-- Location: LCCOMB_X34_Y21_N26
\a21|mem2_rtl_0_bypass[17]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[17]~0_combout\ = !\a20|W_outreg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a20|W_outreg\(2),
	combout => \a21|mem2_rtl_0_bypass[17]~0_combout\);

-- Location: FF_X34_Y21_N27
\a21|mem2_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(17));

-- Location: LCCOMB_X34_Y21_N4
\a21|mem2_rtl_0_bypass[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \a21|mem2_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X34_Y21_N5
\a21|mem2_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(18));

-- Location: LCCOMB_X34_Y21_N30
\a21|mem2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2~43\ = (\a21|mem2~26_combout\) # (!\a21|mem2_rtl_0_bypass\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a21|mem2_rtl_0_bypass\(18),
	datad => \a21|mem2~26_combout\,
	combout => \a21|mem2~43\);

-- Location: LCCOMB_X34_Y21_N6
\a22|i5_W2_outreg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a22|i5_W2_outreg[2]~2_combout\ = (\a21|mem2~43\ & (!\a21|mem2_rtl_0_bypass\(17))) # (!\a21|mem2~43\ & ((\a21|mem2_rtl_0|auto_generated|ram_block1a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a21|mem2_rtl_0_bypass\(17),
	datab => \a21|mem2~43\,
	datad => \a21|mem2_rtl_0|auto_generated|ram_block1a2\,
	combout => \a22|i5_W2_outreg[2]~2_combout\);

-- Location: FF_X34_Y21_N7
\a22|i5_W2_outreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a22|i5_W2_outreg[2]~2_combout\,
	asdata => \a20|W_outreg\(2),
	sload => \a20|ALT_INV_MEM_contreg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a22|i5_W2_outreg\(2));

-- Location: FF_X31_Y20_N31
\a8|RAM[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(2),
	sload => VCC,
	ena => \a8|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[2][2]~q\);

-- Location: LCCOMB_X31_Y20_N8
\a8|RAM[3][2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \a8|RAM[3][2]~5_combout\ = !\a22|i5_W2_outreg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a22|i5_W2_outreg\(2),
	combout => \a8|RAM[3][2]~5_combout\);

-- Location: FF_X31_Y20_N9
\a8|RAM[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|RAM[3][2]~5_combout\,
	ena => \a8|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[3][2]~q\);

-- Location: FF_X30_Y20_N23
\a8|RAM[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(2),
	sload => VCC,
	ena => \a8|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[0][2]~q\);

-- Location: FF_X30_Y20_N17
\a8|RAM[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(2),
	sload => VCC,
	ena => \a8|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[1][2]~q\);

-- Location: LCCOMB_X30_Y20_N16
\a11|A_outreg~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~23_combout\ = (\a7|rf_a1reg\(0) & (((\a8|RAM[1][2]~q\) # (\a7|rf_a1reg\(1))))) # (!\a7|rf_a1reg\(0) & (\a8|RAM[0][2]~q\ & ((!\a7|rf_a1reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a1reg\(0),
	datab => \a8|RAM[0][2]~q\,
	datac => \a8|RAM[1][2]~q\,
	datad => \a7|rf_a1reg\(1),
	combout => \a11|A_outreg~23_combout\);

-- Location: LCCOMB_X30_Y20_N0
\a11|A_outreg~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~24_combout\ = (\a7|rf_a1reg\(1) & ((\a11|A_outreg~23_combout\ & ((!\a8|RAM[3][2]~q\))) # (!\a11|A_outreg~23_combout\ & (\a8|RAM[2][2]~q\)))) # (!\a7|rf_a1reg\(1) & (((\a11|A_outreg~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[2][2]~q\,
	datab => \a7|rf_a1reg\(1),
	datac => \a8|RAM[3][2]~q\,
	datad => \a11|A_outreg~23_combout\,
	combout => \a11|A_outreg~24_combout\);

-- Location: FF_X32_Y17_N7
\a8|RAM[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(2),
	sload => VCC,
	ena => \a8|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[4][2]~q\);

-- Location: FF_X32_Y17_N21
\a8|RAM[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(2),
	sload => VCC,
	ena => \a8|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[6][2]~q\);

-- Location: LCCOMB_X32_Y17_N20
\a11|A_outreg~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~26_combout\ = (\a7|rf_a1reg\(1) & (((\a8|RAM[6][2]~q\) # (\a7|rf_a1reg\(0))))) # (!\a7|rf_a1reg\(1) & (\a8|RAM[4][2]~q\ & ((!\a7|rf_a1reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[4][2]~q\,
	datab => \a7|rf_a1reg\(1),
	datac => \a8|RAM[6][2]~q\,
	datad => \a7|rf_a1reg\(0),
	combout => \a11|A_outreg~26_combout\);

-- Location: FF_X31_Y17_N5
\a8|RAM[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(2),
	sload => VCC,
	ena => \a8|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[5][2]~q\);

-- Location: FF_X31_Y17_N11
\a8|RAM[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(2),
	sload => VCC,
	ena => \a8|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[7][2]~q\);

-- Location: LCCOMB_X31_Y17_N4
\a11|A_outreg~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~27_combout\ = (\a11|A_outreg~26_combout\ & (((\a8|RAM[7][2]~q\)) # (!\a7|rf_a1reg\(0)))) # (!\a11|A_outreg~26_combout\ & (\a7|rf_a1reg\(0) & (\a8|RAM[5][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg~26_combout\,
	datab => \a7|rf_a1reg\(0),
	datac => \a8|RAM[5][2]~q\,
	datad => \a8|RAM[7][2]~q\,
	combout => \a11|A_outreg~27_combout\);

-- Location: LCCOMB_X34_Y21_N10
\a21|mem2_d1_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_d1_out[2]~2_combout\ = (\a20|MEM_contreg\(0) & \a22|i5_W2_outreg[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a20|MEM_contreg\(0),
	datad => \a22|i5_W2_outreg[2]~2_combout\,
	combout => \a21|mem2_d1_out[2]~2_combout\);

-- Location: LCCOMB_X34_Y21_N2
\a11|A_outreg~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~25_combout\ = (\a11|A_outreg[7]~12_combout\ & ((\a11|A_outreg[7]~11_combout\) # ((\a21|mem2_d1_out[2]~2_combout\)))) # (!\a11|A_outreg[7]~12_combout\ & (!\a11|A_outreg[7]~11_combout\ & (\a22|i5_W2_outreg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg[7]~12_combout\,
	datab => \a11|A_outreg[7]~11_combout\,
	datac => \a22|i5_W2_outreg\(2),
	datad => \a21|mem2_d1_out[2]~2_combout\,
	combout => \a11|A_outreg~25_combout\);

-- Location: LCCOMB_X34_Y21_N28
\a11|A_outreg~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~28_combout\ = (\a11|A_outreg[7]~11_combout\ & ((\a11|A_outreg~25_combout\ & ((\a11|A_outreg~27_combout\))) # (!\a11|A_outreg~25_combout\ & (\a11|A_outreg~24_combout\)))) # (!\a11|A_outreg[7]~11_combout\ & (((\a11|A_outreg~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg~24_combout\,
	datab => \a11|A_outreg[7]~11_combout\,
	datac => \a11|A_outreg~27_combout\,
	datad => \a11|A_outreg~25_combout\,
	combout => \a11|A_outreg~28_combout\);

-- Location: LCCOMB_X35_Y20_N24
\a11|A_outreg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg[2]~2_combout\ = (\a19|N2~0_combout\ & (\a20|W_outreg\(2))) # (!\a19|N2~0_combout\ & ((\a11|A_outreg~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a19|N2~0_combout\,
	datab => \a20|W_outreg\(2),
	datad => \a11|A_outreg~28_combout\,
	combout => \a11|A_outreg[2]~2_combout\);

-- Location: FF_X35_Y20_N25
\a11|A_outreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|A_outreg[2]~2_combout\,
	asdata => \a12|Add0~4_combout\,
	sload => \a19|N0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|A_outreg\(2));

-- Location: LCCOMB_X36_Y21_N4
\a7|imm9reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a7|imm9reg~1_combout\ = (\a3|inter1reg\(30) & (\a5|treg\(1))) # (!\a3|inter1reg\(30) & ((\a3|inter1reg\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a3|inter1reg\(30),
	datac => \a5|treg\(1),
	datad => \a3|inter1reg\(18),
	combout => \a7|imm9reg~1_combout\);

-- Location: FF_X36_Y21_N5
\a7|imm9reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a7|imm9reg~1_combout\,
	ena => \a18|stall_cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|imm9reg\(1));

-- Location: LCCOMB_X35_Y21_N14
\a11|se16reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|se16reg~1_combout\ = (\a7|imm9reg\(1) & \a7|OR_cont_outreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|imm9reg\(1),
	datad => \a7|OR_cont_outreg\(1),
	combout => \a11|se16reg~1_combout\);

-- Location: FF_X35_Y21_N15
\a11|se16reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|se16reg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|se16reg\(1));

-- Location: LCCOMB_X35_Y21_N28
\a12|alu2_b[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|alu2_b[1]~1_combout\ = (\a11|EX_cont_outreg\(7) & ((\a11|B_outreg\(1)))) # (!\a11|EX_cont_outreg\(7) & (\a11|se16reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a11|se16reg\(1),
	datac => \a11|EX_cont_outreg\(7),
	datad => \a11|B_outreg\(1),
	combout => \a12|alu2_b[1]~1_combout\);

-- Location: LCCOMB_X36_Y21_N18
\a7|imm9reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a7|imm9reg~0_combout\ = (\a3|inter1reg\(30) & (\a5|treg\(0))) # (!\a3|inter1reg\(30) & ((\a3|inter1reg\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|treg\(0),
	datab => \a3|inter1reg\(17),
	datad => \a3|inter1reg\(30),
	combout => \a7|imm9reg~0_combout\);

-- Location: FF_X36_Y21_N19
\a7|imm9reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a7|imm9reg~0_combout\,
	ena => \a18|stall_cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|imm9reg\(0));

-- Location: LCCOMB_X35_Y21_N10
\a11|se16reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|se16reg~0_combout\ = (\a7|imm9reg\(0) & \a7|OR_cont_outreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a7|imm9reg\(0),
	datad => \a7|OR_cont_outreg\(1),
	combout => \a11|se16reg~0_combout\);

-- Location: FF_X35_Y21_N11
\a11|se16reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|se16reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|se16reg\(0));

-- Location: LCCOMB_X35_Y21_N18
\a12|alu2_b[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|alu2_b[0]~0_combout\ = (\a11|EX_cont_outreg\(7) & (\a11|B_outreg\(0))) # (!\a11|EX_cont_outreg\(7) & ((\a11|se16reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a11|EX_cont_outreg\(7),
	datac => \a11|B_outreg\(0),
	datad => \a11|se16reg\(0),
	combout => \a12|alu2_b[0]~0_combout\);

-- Location: LCCOMB_X36_Y20_N16
\a12|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|Add0~0_combout\ = (\a11|A_outreg\(0) & (\a12|alu2_b[0]~0_combout\ $ (VCC))) # (!\a11|A_outreg\(0) & (\a12|alu2_b[0]~0_combout\ & VCC))
-- \a12|Add0~1\ = CARRY((\a11|A_outreg\(0) & \a12|alu2_b[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg\(0),
	datab => \a12|alu2_b[0]~0_combout\,
	datad => VCC,
	combout => \a12|Add0~0_combout\,
	cout => \a12|Add0~1\);

-- Location: LCCOMB_X36_Y20_N18
\a12|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|Add0~2_combout\ = (\a11|A_outreg\(1) & ((\a12|alu2_b[1]~1_combout\ & (\a12|Add0~1\ & VCC)) # (!\a12|alu2_b[1]~1_combout\ & (!\a12|Add0~1\)))) # (!\a11|A_outreg\(1) & ((\a12|alu2_b[1]~1_combout\ & (!\a12|Add0~1\)) # (!\a12|alu2_b[1]~1_combout\ & 
-- ((\a12|Add0~1\) # (GND)))))
-- \a12|Add0~3\ = CARRY((\a11|A_outreg\(1) & (!\a12|alu2_b[1]~1_combout\ & !\a12|Add0~1\)) # (!\a11|A_outreg\(1) & ((!\a12|Add0~1\) # (!\a12|alu2_b[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg\(1),
	datab => \a12|alu2_b[1]~1_combout\,
	datad => VCC,
	cin => \a12|Add0~1\,
	combout => \a12|Add0~2_combout\,
	cout => \a12|Add0~3\);

-- Location: LCCOMB_X36_Y20_N20
\a12|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|Add0~4_combout\ = ((\a12|alu2_b[2]~2_combout\ $ (\a11|A_outreg\(2) $ (!\a12|Add0~3\)))) # (GND)
-- \a12|Add0~5\ = CARRY((\a12|alu2_b[2]~2_combout\ & ((\a11|A_outreg\(2)) # (!\a12|Add0~3\))) # (!\a12|alu2_b[2]~2_combout\ & (\a11|A_outreg\(2) & !\a12|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a12|alu2_b[2]~2_combout\,
	datab => \a11|A_outreg\(2),
	datad => VCC,
	cin => \a12|Add0~3\,
	combout => \a12|Add0~4_combout\,
	cout => \a12|Add0~5\);

-- Location: LCCOMB_X36_Y20_N22
\a12|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|Add0~6_combout\ = (\a11|A_outreg\(3) & ((\a12|alu2_b[3]~3_combout\ & (\a12|Add0~5\ & VCC)) # (!\a12|alu2_b[3]~3_combout\ & (!\a12|Add0~5\)))) # (!\a11|A_outreg\(3) & ((\a12|alu2_b[3]~3_combout\ & (!\a12|Add0~5\)) # (!\a12|alu2_b[3]~3_combout\ & 
-- ((\a12|Add0~5\) # (GND)))))
-- \a12|Add0~7\ = CARRY((\a11|A_outreg\(3) & (!\a12|alu2_b[3]~3_combout\ & !\a12|Add0~5\)) # (!\a11|A_outreg\(3) & ((!\a12|Add0~5\) # (!\a12|alu2_b[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg\(3),
	datab => \a12|alu2_b[3]~3_combout\,
	datad => VCC,
	cin => \a12|Add0~5\,
	combout => \a12|Add0~6_combout\,
	cout => \a12|Add0~7\);

-- Location: LCCOMB_X36_Y20_N24
\a12|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|Add0~8_combout\ = ((\a11|A_outreg\(4) $ (\a12|alu2_b[4]~4_combout\ $ (!\a12|Add0~7\)))) # (GND)
-- \a12|Add0~9\ = CARRY((\a11|A_outreg\(4) & ((\a12|alu2_b[4]~4_combout\) # (!\a12|Add0~7\))) # (!\a11|A_outreg\(4) & (\a12|alu2_b[4]~4_combout\ & !\a12|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg\(4),
	datab => \a12|alu2_b[4]~4_combout\,
	datad => VCC,
	cin => \a12|Add0~7\,
	combout => \a12|Add0~8_combout\,
	cout => \a12|Add0~9\);

-- Location: LCCOMB_X36_Y20_N26
\a12|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|Add0~10_combout\ = (\a12|alu2_b[5]~5_combout\ & ((\a11|A_outreg\(5) & (\a12|Add0~9\ & VCC)) # (!\a11|A_outreg\(5) & (!\a12|Add0~9\)))) # (!\a12|alu2_b[5]~5_combout\ & ((\a11|A_outreg\(5) & (!\a12|Add0~9\)) # (!\a11|A_outreg\(5) & ((\a12|Add0~9\) # 
-- (GND)))))
-- \a12|Add0~11\ = CARRY((\a12|alu2_b[5]~5_combout\ & (!\a11|A_outreg\(5) & !\a12|Add0~9\)) # (!\a12|alu2_b[5]~5_combout\ & ((!\a12|Add0~9\) # (!\a11|A_outreg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a12|alu2_b[5]~5_combout\,
	datab => \a11|A_outreg\(5),
	datad => VCC,
	cin => \a12|Add0~9\,
	combout => \a12|Add0~10_combout\,
	cout => \a12|Add0~11\);

-- Location: LCCOMB_X36_Y20_N28
\a12|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|Add0~12_combout\ = ((\a12|alu2_b[6]~6_combout\ $ (\a11|A_outreg\(6) $ (!\a12|Add0~11\)))) # (GND)
-- \a12|Add0~13\ = CARRY((\a12|alu2_b[6]~6_combout\ & ((\a11|A_outreg\(6)) # (!\a12|Add0~11\))) # (!\a12|alu2_b[6]~6_combout\ & (\a11|A_outreg\(6) & !\a12|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a12|alu2_b[6]~6_combout\,
	datab => \a11|A_outreg\(6),
	datad => VCC,
	cin => \a12|Add0~11\,
	combout => \a12|Add0~12_combout\,
	cout => \a12|Add0~13\);

-- Location: LCCOMB_X36_Y20_N30
\a12|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|Add0~14_combout\ = (\a11|A_outreg\(7) & ((\a12|alu2_b[7]~7_combout\ & (\a12|Add0~13\ & VCC)) # (!\a12|alu2_b[7]~7_combout\ & (!\a12|Add0~13\)))) # (!\a11|A_outreg\(7) & ((\a12|alu2_b[7]~7_combout\ & (!\a12|Add0~13\)) # (!\a12|alu2_b[7]~7_combout\ & 
-- ((\a12|Add0~13\) # (GND)))))
-- \a12|Add0~15\ = CARRY((\a11|A_outreg\(7) & (!\a12|alu2_b[7]~7_combout\ & !\a12|Add0~13\)) # (!\a11|A_outreg\(7) & ((!\a12|Add0~13\) # (!\a12|alu2_b[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg\(7),
	datab => \a12|alu2_b[7]~7_combout\,
	datad => VCC,
	cin => \a12|Add0~13\,
	combout => \a12|Add0~14_combout\,
	cout => \a12|Add0~15\);

-- Location: LCCOMB_X36_Y19_N0
\a12|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|Add0~16_combout\ = ((\a12|alu2_b[8]~13_combout\ $ (\a11|A_outreg\(8) $ (!\a12|Add0~15\)))) # (GND)
-- \a12|Add0~17\ = CARRY((\a12|alu2_b[8]~13_combout\ & ((\a11|A_outreg\(8)) # (!\a12|Add0~15\))) # (!\a12|alu2_b[8]~13_combout\ & (\a11|A_outreg\(8) & !\a12|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a12|alu2_b[8]~13_combout\,
	datab => \a11|A_outreg\(8),
	datad => VCC,
	cin => \a12|Add0~15\,
	combout => \a12|Add0~16_combout\,
	cout => \a12|Add0~17\);

-- Location: LCCOMB_X36_Y19_N2
\a12|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|Add0~18_combout\ = (\a11|A_outreg\(9) & ((\a12|alu2_b[9]~12_combout\ & (\a12|Add0~17\ & VCC)) # (!\a12|alu2_b[9]~12_combout\ & (!\a12|Add0~17\)))) # (!\a11|A_outreg\(9) & ((\a12|alu2_b[9]~12_combout\ & (!\a12|Add0~17\)) # (!\a12|alu2_b[9]~12_combout\ 
-- & ((\a12|Add0~17\) # (GND)))))
-- \a12|Add0~19\ = CARRY((\a11|A_outreg\(9) & (!\a12|alu2_b[9]~12_combout\ & !\a12|Add0~17\)) # (!\a11|A_outreg\(9) & ((!\a12|Add0~17\) # (!\a12|alu2_b[9]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg\(9),
	datab => \a12|alu2_b[9]~12_combout\,
	datad => VCC,
	cin => \a12|Add0~17\,
	combout => \a12|Add0~18_combout\,
	cout => \a12|Add0~19\);

-- Location: LCCOMB_X36_Y19_N4
\a12|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|Add0~20_combout\ = ((\a12|alu2_b[10]~11_combout\ $ (\a11|A_outreg\(10) $ (!\a12|Add0~19\)))) # (GND)
-- \a12|Add0~21\ = CARRY((\a12|alu2_b[10]~11_combout\ & ((\a11|A_outreg\(10)) # (!\a12|Add0~19\))) # (!\a12|alu2_b[10]~11_combout\ & (\a11|A_outreg\(10) & !\a12|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a12|alu2_b[10]~11_combout\,
	datab => \a11|A_outreg\(10),
	datad => VCC,
	cin => \a12|Add0~19\,
	combout => \a12|Add0~20_combout\,
	cout => \a12|Add0~21\);

-- Location: LCCOMB_X36_Y19_N6
\a12|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|Add0~22_combout\ = (\a12|alu2_b[11]~10_combout\ & ((\a11|A_outreg\(11) & (\a12|Add0~21\ & VCC)) # (!\a11|A_outreg\(11) & (!\a12|Add0~21\)))) # (!\a12|alu2_b[11]~10_combout\ & ((\a11|A_outreg\(11) & (!\a12|Add0~21\)) # (!\a11|A_outreg\(11) & 
-- ((\a12|Add0~21\) # (GND)))))
-- \a12|Add0~23\ = CARRY((\a12|alu2_b[11]~10_combout\ & (!\a11|A_outreg\(11) & !\a12|Add0~21\)) # (!\a12|alu2_b[11]~10_combout\ & ((!\a12|Add0~21\) # (!\a11|A_outreg\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a12|alu2_b[11]~10_combout\,
	datab => \a11|A_outreg\(11),
	datad => VCC,
	cin => \a12|Add0~21\,
	combout => \a12|Add0~22_combout\,
	cout => \a12|Add0~23\);

-- Location: LCCOMB_X36_Y19_N8
\a12|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|Add0~24_combout\ = ((\a12|alu2_b[12]~9_combout\ $ (\a11|A_outreg\(12) $ (!\a12|Add0~23\)))) # (GND)
-- \a12|Add0~25\ = CARRY((\a12|alu2_b[12]~9_combout\ & ((\a11|A_outreg\(12)) # (!\a12|Add0~23\))) # (!\a12|alu2_b[12]~9_combout\ & (\a11|A_outreg\(12) & !\a12|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a12|alu2_b[12]~9_combout\,
	datab => \a11|A_outreg\(12),
	datad => VCC,
	cin => \a12|Add0~23\,
	combout => \a12|Add0~24_combout\,
	cout => \a12|Add0~25\);

-- Location: LCCOMB_X36_Y19_N10
\a12|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|Add0~26_combout\ = (\a12|alu2_b[13]~8_combout\ & ((\a11|A_outreg\(13) & (\a12|Add0~25\ & VCC)) # (!\a11|A_outreg\(13) & (!\a12|Add0~25\)))) # (!\a12|alu2_b[13]~8_combout\ & ((\a11|A_outreg\(13) & (!\a12|Add0~25\)) # (!\a11|A_outreg\(13) & 
-- ((\a12|Add0~25\) # (GND)))))
-- \a12|Add0~27\ = CARRY((\a12|alu2_b[13]~8_combout\ & (!\a11|A_outreg\(13) & !\a12|Add0~25\)) # (!\a12|alu2_b[13]~8_combout\ & ((!\a12|Add0~25\) # (!\a11|A_outreg\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a12|alu2_b[13]~8_combout\,
	datab => \a11|A_outreg\(13),
	datad => VCC,
	cin => \a12|Add0~25\,
	combout => \a12|Add0~26_combout\,
	cout => \a12|Add0~27\);

-- Location: LCCOMB_X36_Y19_N12
\a12|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|Add0~28_combout\ = ((\a11|A_outreg\(14) $ (\a12|alu2_b[14]~14_combout\ $ (!\a12|Add0~27\)))) # (GND)
-- \a12|Add0~29\ = CARRY((\a11|A_outreg\(14) & ((\a12|alu2_b[14]~14_combout\) # (!\a12|Add0~27\))) # (!\a11|A_outreg\(14) & (\a12|alu2_b[14]~14_combout\ & !\a12|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg\(14),
	datab => \a12|alu2_b[14]~14_combout\,
	datad => VCC,
	cin => \a12|Add0~27\,
	combout => \a12|Add0~28_combout\,
	cout => \a12|Add0~29\);

-- Location: LCCOMB_X36_Y19_N14
\a12|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|Add0~30_combout\ = (\a12|alu2_b[15]~15_combout\ & ((\a11|A_outreg\(15) & (\a12|Add0~29\ & VCC)) # (!\a11|A_outreg\(15) & (!\a12|Add0~29\)))) # (!\a12|alu2_b[15]~15_combout\ & ((\a11|A_outreg\(15) & (!\a12|Add0~29\)) # (!\a11|A_outreg\(15) & 
-- ((\a12|Add0~29\) # (GND)))))
-- \a12|Add0~31\ = CARRY((\a12|alu2_b[15]~15_combout\ & (!\a11|A_outreg\(15) & !\a12|Add0~29\)) # (!\a12|alu2_b[15]~15_combout\ & ((!\a12|Add0~29\) # (!\a11|A_outreg\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a12|alu2_b[15]~15_combout\,
	datab => \a11|A_outreg\(15),
	datad => VCC,
	cin => \a12|Add0~29\,
	combout => \a12|Add0~30_combout\,
	cout => \a12|Add0~31\);

-- Location: LCCOMB_X31_Y19_N14
\a20|W_outreg~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \a20|W_outreg~15_combout\ = (\a11|MEM_cont_outreg\(1) & ((\a11|B_outreg\(15)))) # (!\a11|MEM_cont_outreg\(1) & (\a12|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|MEM_cont_outreg\(1),
	datac => \a12|Add0~30_combout\,
	datad => \a11|B_outreg\(15),
	combout => \a20|W_outreg~15_combout\);

-- Location: FF_X31_Y19_N15
\a20|W_outreg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a20|W_outreg~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a20|W_outreg\(15));

-- Location: LCCOMB_X38_Y19_N0
\a22|i5_W2_outreg[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \a22|i5_W2_outreg[14]~14_combout\ = (\a21|mem2~54\ & (\a21|mem2_rtl_0_bypass\(41))) # (!\a21|mem2~54\ & ((\a21|mem2_rtl_0|auto_generated|ram_block1a14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a21|mem2_rtl_0_bypass\(41),
	datab => \a21|mem2~54\,
	datad => \a21|mem2_rtl_0|auto_generated|ram_block1a14\,
	combout => \a22|i5_W2_outreg[14]~14_combout\);

-- Location: FF_X38_Y19_N1
\a22|i5_W2_outreg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a22|i5_W2_outreg[14]~14_combout\,
	asdata => \a20|W_outreg\(14),
	sload => \a20|ALT_INV_MEM_contreg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a22|i5_W2_outreg\(14));

-- Location: FF_X29_Y19_N19
\a8|RAM[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(14),
	sload => VCC,
	ena => \a8|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[0][14]~q\);

-- Location: FF_X29_Y19_N13
\a8|RAM[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(14),
	sload => VCC,
	ena => \a8|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[1][14]~q\);

-- Location: LCCOMB_X29_Y19_N12
\a11|B_outreg~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~122_combout\ = (\a7|rf_a2reg\(1) & (((\a7|rf_a2reg\(0))))) # (!\a7|rf_a2reg\(1) & ((\a7|rf_a2reg\(0) & ((\a8|RAM[1][14]~q\))) # (!\a7|rf_a2reg\(0) & (\a8|RAM[0][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(1),
	datab => \a8|RAM[0][14]~q\,
	datac => \a8|RAM[1][14]~q\,
	datad => \a7|rf_a2reg\(0),
	combout => \a11|B_outreg~122_combout\);

-- Location: FF_X30_Y19_N29
\a8|RAM[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(14),
	sload => VCC,
	ena => \a8|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[2][14]~q\);

-- Location: FF_X30_Y19_N31
\a8|RAM[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(14),
	sload => VCC,
	ena => \a8|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[3][14]~q\);

-- Location: LCCOMB_X30_Y19_N30
\a11|B_outreg~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~123_combout\ = (\a11|B_outreg~122_combout\ & (((\a8|RAM[3][14]~q\) # (!\a7|rf_a2reg\(1))))) # (!\a11|B_outreg~122_combout\ & (\a8|RAM[2][14]~q\ & ((\a7|rf_a2reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~122_combout\,
	datab => \a8|RAM[2][14]~q\,
	datac => \a8|RAM[3][14]~q\,
	datad => \a7|rf_a2reg\(1),
	combout => \a11|B_outreg~123_combout\);

-- Location: FF_X31_Y18_N29
\a8|RAM[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(14),
	sload => VCC,
	ena => \a8|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[5][14]~q\);

-- Location: FF_X31_Y18_N3
\a8|RAM[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(14),
	sload => VCC,
	ena => \a8|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[7][14]~q\);

-- Location: FF_X32_Y17_N1
\a8|RAM[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(14),
	sload => VCC,
	ena => \a8|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[6][14]~q\);

-- Location: FF_X32_Y17_N31
\a8|RAM[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(14),
	sload => VCC,
	ena => \a8|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[4][14]~q\);

-- Location: LCCOMB_X32_Y17_N30
\a11|B_outreg~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~124_combout\ = (\a7|rf_a2reg\(1) & ((\a8|RAM[6][14]~q\) # ((\a7|rf_a2reg\(0))))) # (!\a7|rf_a2reg\(1) & (((\a8|RAM[4][14]~q\ & !\a7|rf_a2reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(1),
	datab => \a8|RAM[6][14]~q\,
	datac => \a8|RAM[4][14]~q\,
	datad => \a7|rf_a2reg\(0),
	combout => \a11|B_outreg~124_combout\);

-- Location: LCCOMB_X31_Y18_N2
\a11|B_outreg~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~125_combout\ = (\a7|rf_a2reg\(0) & ((\a11|B_outreg~124_combout\ & ((\a8|RAM[7][14]~q\))) # (!\a11|B_outreg~124_combout\ & (\a8|RAM[5][14]~q\)))) # (!\a7|rf_a2reg\(0) & (((\a11|B_outreg~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(0),
	datab => \a8|RAM[5][14]~q\,
	datac => \a8|RAM[7][14]~q\,
	datad => \a11|B_outreg~124_combout\,
	combout => \a11|B_outreg~125_combout\);

-- Location: LCCOMB_X34_Y19_N6
\a11|B_outreg~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~126_combout\ = (\a11|B_outreg[10]~7_combout\ & (((\a11|B_outreg~125_combout\) # (!\a11|B_outreg[10]~10_combout\)))) # (!\a11|B_outreg[10]~7_combout\ & (\a11|B_outreg~123_combout\ & (\a11|B_outreg[10]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~123_combout\,
	datab => \a11|B_outreg[10]~7_combout\,
	datac => \a11|B_outreg[10]~10_combout\,
	datad => \a11|B_outreg~125_combout\,
	combout => \a11|B_outreg~126_combout\);

-- Location: LCCOMB_X38_Y19_N18
\a21|mem2_d1_out[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_d1_out[14]~14_combout\ = (\a20|MEM_contreg\(0) & \a22|i5_W2_outreg[14]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a20|MEM_contreg\(0),
	datad => \a22|i5_W2_outreg[14]~14_combout\,
	combout => \a21|mem2_d1_out[14]~14_combout\);

-- Location: LCCOMB_X38_Y19_N8
\a11|B_outreg~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~127_combout\ = (\a11|B_outreg[10]~10_combout\ & (((\a11|B_outreg~126_combout\)))) # (!\a11|B_outreg[10]~10_combout\ & ((\a11|B_outreg~126_combout\ & ((\a21|mem2_d1_out[14]~14_combout\))) # (!\a11|B_outreg~126_combout\ & 
-- (\a22|i5_W2_outreg\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg[10]~10_combout\,
	datab => \a22|i5_W2_outreg\(14),
	datac => \a11|B_outreg~126_combout\,
	datad => \a21|mem2_d1_out[14]~14_combout\,
	combout => \a11|B_outreg~127_combout\);

-- Location: LCCOMB_X38_Y19_N12
\a11|B_outreg~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~138_combout\ = (\a19|P0~2_combout\ & (((\a12|Add0~28_combout\)))) # (!\a19|P0~2_combout\ & (\a20|W_outreg\(14) & (\a19|P2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a20|W_outreg\(14),
	datab => \a19|P2~combout\,
	datac => \a19|P0~2_combout\,
	datad => \a12|Add0~28_combout\,
	combout => \a11|B_outreg~138_combout\);

-- Location: LCCOMB_X38_Y19_N10
\a11|B_outreg~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~139_combout\ = (\a11|B_outreg~138_combout\) # ((\a11|B_outreg~73_combout\ & \a11|B_outreg~127_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~73_combout\,
	datac => \a11|B_outreg~127_combout\,
	datad => \a11|B_outreg~138_combout\,
	combout => \a11|B_outreg~139_combout\);

-- Location: FF_X38_Y19_N11
\a11|B_outreg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|B_outreg~139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|B_outreg\(14));

-- Location: LCCOMB_X36_Y19_N22
\a20|W_outreg~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \a20|W_outreg~14_combout\ = (\a11|MEM_cont_outreg\(1) & (\a11|B_outreg\(14))) # (!\a11|MEM_cont_outreg\(1) & ((\a12|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a11|MEM_cont_outreg\(1),
	datac => \a11|B_outreg\(14),
	datad => \a12|Add0~28_combout\,
	combout => \a20|W_outreg~14_combout\);

-- Location: FF_X36_Y19_N23
\a20|W_outreg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a20|W_outreg~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a20|W_outreg\(14));

-- Location: LCCOMB_X28_Y19_N20
\a21|mem2_rtl_0_bypass[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[40]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \a21|mem2_rtl_0_bypass[40]~feeder_combout\);

-- Location: FF_X28_Y19_N21
\a21|mem2_rtl_0_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(40));

-- Location: LCCOMB_X32_Y19_N0
\a21|mem2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2~49\ = (\a21|mem2~26_combout\) # (!\a21|mem2_rtl_0_bypass\(40))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a21|mem2~26_combout\,
	datad => \a21|mem2_rtl_0_bypass\(40),
	combout => \a21|mem2~49\);

-- Location: LCCOMB_X32_Y19_N20
\a22|i5_W2_outreg[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \a22|i5_W2_outreg[13]~13_combout\ = (\a21|mem2~49\ & (\a21|mem2_rtl_0_bypass\(39))) # (!\a21|mem2~49\ & ((\a21|mem2_rtl_0|auto_generated|ram_block1a13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a21|mem2_rtl_0_bypass\(39),
	datab => \a21|mem2_rtl_0|auto_generated|ram_block1a13\,
	datad => \a21|mem2~49\,
	combout => \a22|i5_W2_outreg[13]~13_combout\);

-- Location: FF_X32_Y19_N21
\a22|i5_W2_outreg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a22|i5_W2_outreg[13]~13_combout\,
	asdata => \a20|W_outreg\(13),
	sload => \a20|ALT_INV_MEM_contreg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a22|i5_W2_outreg\(13));

-- Location: FF_X30_Y19_N23
\a8|RAM[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(13),
	sload => VCC,
	ena => \a8|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[2][13]~q\);

-- Location: FF_X29_Y19_N31
\a8|RAM[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(13),
	sload => VCC,
	ena => \a8|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[1][13]~q\);

-- Location: FF_X29_Y19_N25
\a8|RAM[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(13),
	sload => VCC,
	ena => \a8|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[0][13]~q\);

-- Location: LCCOMB_X29_Y19_N24
\a11|A_outreg~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~61_combout\ = (\a7|rf_a1reg\(0) & ((\a8|RAM[1][13]~q\) # ((\a7|rf_a1reg\(1))))) # (!\a7|rf_a1reg\(0) & (((\a8|RAM[0][13]~q\ & !\a7|rf_a1reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[1][13]~q\,
	datab => \a7|rf_a1reg\(0),
	datac => \a8|RAM[0][13]~q\,
	datad => \a7|rf_a1reg\(1),
	combout => \a11|A_outreg~61_combout\);

-- Location: FF_X30_Y19_N21
\a8|RAM[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(13),
	sload => VCC,
	ena => \a8|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[3][13]~q\);

-- Location: LCCOMB_X30_Y19_N20
\a11|A_outreg~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~62_combout\ = (\a11|A_outreg~61_combout\ & (((\a8|RAM[3][13]~q\) # (!\a7|rf_a1reg\(1))))) # (!\a11|A_outreg~61_combout\ & (\a8|RAM[2][13]~q\ & ((\a7|rf_a1reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[2][13]~q\,
	datab => \a11|A_outreg~61_combout\,
	datac => \a8|RAM[3][13]~q\,
	datad => \a7|rf_a1reg\(1),
	combout => \a11|A_outreg~62_combout\);

-- Location: LCCOMB_X32_Y19_N8
\a11|A_outreg~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~63_combout\ = (\a11|A_outreg[7]~11_combout\ & (((\a11|A_outreg~62_combout\) # (\a11|A_outreg[7]~12_combout\)))) # (!\a11|A_outreg[7]~11_combout\ & (\a22|i5_W2_outreg\(13) & ((!\a11|A_outreg[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a22|i5_W2_outreg\(13),
	datab => \a11|A_outreg[7]~11_combout\,
	datac => \a11|A_outreg~62_combout\,
	datad => \a11|A_outreg[7]~12_combout\,
	combout => \a11|A_outreg~63_combout\);

-- Location: FF_X32_Y18_N29
\a8|RAM[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(13),
	sload => VCC,
	ena => \a8|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[6][13]~q\);

-- Location: FF_X32_Y18_N11
\a8|RAM[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(13),
	sload => VCC,
	ena => \a8|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[4][13]~q\);

-- Location: LCCOMB_X32_Y18_N10
\a11|A_outreg~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~64_combout\ = (\a7|rf_a1reg\(0) & (((\a7|rf_a1reg\(1))))) # (!\a7|rf_a1reg\(0) & ((\a7|rf_a1reg\(1) & (\a8|RAM[6][13]~q\)) # (!\a7|rf_a1reg\(1) & ((\a8|RAM[4][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a1reg\(0),
	datab => \a8|RAM[6][13]~q\,
	datac => \a8|RAM[4][13]~q\,
	datad => \a7|rf_a1reg\(1),
	combout => \a11|A_outreg~64_combout\);

-- Location: FF_X31_Y18_N13
\a8|RAM[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(13),
	sload => VCC,
	ena => \a8|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[5][13]~q\);

-- Location: FF_X31_Y18_N7
\a8|RAM[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(13),
	sload => VCC,
	ena => \a8|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[7][13]~q\);

-- Location: LCCOMB_X31_Y18_N12
\a11|A_outreg~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~65_combout\ = (\a7|rf_a1reg\(0) & ((\a11|A_outreg~64_combout\ & ((\a8|RAM[7][13]~q\))) # (!\a11|A_outreg~64_combout\ & (\a8|RAM[5][13]~q\)))) # (!\a7|rf_a1reg\(0) & (\a11|A_outreg~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a1reg\(0),
	datab => \a11|A_outreg~64_combout\,
	datac => \a8|RAM[5][13]~q\,
	datad => \a8|RAM[7][13]~q\,
	combout => \a11|A_outreg~65_combout\);

-- Location: LCCOMB_X32_Y19_N6
\a21|mem2_d1_out[13]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_d1_out[13]~8_combout\ = (\a20|MEM_contreg\(0) & \a22|i5_W2_outreg[13]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a20|MEM_contreg\(0),
	datad => \a22|i5_W2_outreg[13]~13_combout\,
	combout => \a21|mem2_d1_out[13]~8_combout\);

-- Location: LCCOMB_X32_Y19_N2
\a11|A_outreg~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~66_combout\ = (\a11|A_outreg[7]~12_combout\ & ((\a11|A_outreg~63_combout\ & (\a11|A_outreg~65_combout\)) # (!\a11|A_outreg~63_combout\ & ((\a21|mem2_d1_out[13]~8_combout\))))) # (!\a11|A_outreg[7]~12_combout\ & (\a11|A_outreg~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg[7]~12_combout\,
	datab => \a11|A_outreg~63_combout\,
	datac => \a11|A_outreg~65_combout\,
	datad => \a21|mem2_d1_out[13]~8_combout\,
	combout => \a11|A_outreg~66_combout\);

-- Location: LCCOMB_X32_Y19_N12
\a11|A_outreg~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~67_combout\ = (!\a19|N0~4_combout\ & ((\a19|N2~0_combout\ & (\a20|W_outreg\(13))) # (!\a19|N2~0_combout\ & ((\a11|A_outreg~66_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a20|W_outreg\(13),
	datab => \a19|N2~0_combout\,
	datac => \a19|N0~4_combout\,
	datad => \a11|A_outreg~66_combout\,
	combout => \a11|A_outreg~67_combout\);

-- Location: LCCOMB_X32_Y19_N14
\a11|A_outreg~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~68_combout\ = (\a11|A_outreg~67_combout\) # ((\a12|Add0~26_combout\ & \a19|N0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a12|Add0~26_combout\,
	datac => \a19|N0~4_combout\,
	datad => \a11|A_outreg~67_combout\,
	combout => \a11|A_outreg~68_combout\);

-- Location: FF_X32_Y19_N15
\a11|A_outreg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|A_outreg~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|A_outreg\(13));

-- Location: LCCOMB_X32_Y19_N4
\a11|B_outreg~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~75_combout\ = (\a20|W_outreg\(13) & (!\a19|P0~2_combout\ & \a19|P2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a20|W_outreg\(13),
	datab => \a19|P0~2_combout\,
	datad => \a19|P2~combout\,
	combout => \a11|B_outreg~75_combout\);

-- Location: LCCOMB_X32_Y18_N28
\a11|B_outreg~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~79_combout\ = (\a7|rf_a2reg\(0) & (((\a7|rf_a2reg\(1))))) # (!\a7|rf_a2reg\(0) & ((\a7|rf_a2reg\(1) & ((\a8|RAM[6][13]~q\))) # (!\a7|rf_a2reg\(1) & (\a8|RAM[4][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[4][13]~q\,
	datab => \a7|rf_a2reg\(0),
	datac => \a8|RAM[6][13]~q\,
	datad => \a7|rf_a2reg\(1),
	combout => \a11|B_outreg~79_combout\);

-- Location: LCCOMB_X31_Y18_N6
\a11|B_outreg~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~80_combout\ = (\a7|rf_a2reg\(0) & ((\a11|B_outreg~79_combout\ & (\a8|RAM[7][13]~q\)) # (!\a11|B_outreg~79_combout\ & ((\a8|RAM[5][13]~q\))))) # (!\a7|rf_a2reg\(0) & (\a11|B_outreg~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(0),
	datab => \a11|B_outreg~79_combout\,
	datac => \a8|RAM[7][13]~q\,
	datad => \a8|RAM[5][13]~q\,
	combout => \a11|B_outreg~80_combout\);

-- Location: LCCOMB_X31_Y19_N28
\a11|B_outreg~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~81_combout\ = (\a11|B_outreg[10]~7_combout\ & (((\a11|B_outreg~80_combout\) # (!\a11|B_outreg[10]~10_combout\)))) # (!\a11|B_outreg[10]~7_combout\ & (\a22|i5_W2_outreg\(13) & ((!\a11|B_outreg[10]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a22|i5_W2_outreg\(13),
	datab => \a11|B_outreg~80_combout\,
	datac => \a11|B_outreg[10]~7_combout\,
	datad => \a11|B_outreg[10]~10_combout\,
	combout => \a11|B_outreg~81_combout\);

-- Location: LCCOMB_X29_Y19_N30
\a11|B_outreg~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~76_combout\ = (\a7|rf_a2reg\(1) & (((\a7|rf_a2reg\(0))))) # (!\a7|rf_a2reg\(1) & ((\a7|rf_a2reg\(0) & ((\a8|RAM[1][13]~q\))) # (!\a7|rf_a2reg\(0) & (\a8|RAM[0][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(1),
	datab => \a8|RAM[0][13]~q\,
	datac => \a8|RAM[1][13]~q\,
	datad => \a7|rf_a2reg\(0),
	combout => \a11|B_outreg~76_combout\);

-- Location: LCCOMB_X30_Y19_N22
\a11|B_outreg~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~77_combout\ = (\a7|rf_a2reg\(1) & (\a8|RAM[2][13]~q\ & !\a11|B_outreg~76_combout\)) # (!\a7|rf_a2reg\(1) & ((\a11|B_outreg~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a7|rf_a2reg\(1),
	datac => \a8|RAM[2][13]~q\,
	datad => \a11|B_outreg~76_combout\,
	combout => \a11|B_outreg~77_combout\);

-- Location: LCCOMB_X29_Y19_N14
\a11|B_outreg~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~78_combout\ = (!\a11|B_outreg[10]~7_combout\ & ((\a11|B_outreg~77_combout\) # ((\a8|RAM[3][13]~q\ & \a11|B_outreg~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[3][13]~q\,
	datab => \a11|B_outreg~76_combout\,
	datac => \a11|B_outreg[10]~7_combout\,
	datad => \a11|B_outreg~77_combout\,
	combout => \a11|B_outreg~78_combout\);

-- Location: LCCOMB_X32_Y19_N28
\a11|B_outreg~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~82_combout\ = (\a11|B_outreg[10]~10_combout\) # ((\a11|B_outreg[10]~7_combout\ & ((\a21|mem2_d1_out[13]~8_combout\))) # (!\a11|B_outreg[10]~7_combout\ & (\a22|i5_W2_outreg\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg[10]~10_combout\,
	datab => \a11|B_outreg[10]~7_combout\,
	datac => \a22|i5_W2_outreg\(13),
	datad => \a21|mem2_d1_out[13]~8_combout\,
	combout => \a11|B_outreg~82_combout\);

-- Location: LCCOMB_X32_Y19_N10
\a11|B_outreg~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~83_combout\ = (\a11|B_outreg~73_combout\ & (\a11|B_outreg~82_combout\ & ((\a11|B_outreg~81_combout\) # (\a11|B_outreg~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~73_combout\,
	datab => \a11|B_outreg~81_combout\,
	datac => \a11|B_outreg~78_combout\,
	datad => \a11|B_outreg~82_combout\,
	combout => \a11|B_outreg~83_combout\);

-- Location: LCCOMB_X32_Y19_N18
\a11|B_outreg~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~84_combout\ = (\a11|B_outreg~75_combout\) # ((\a11|B_outreg~83_combout\) # ((\a12|Add0~26_combout\ & \a19|P0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a12|Add0~26_combout\,
	datab => \a19|P0~2_combout\,
	datac => \a11|B_outreg~75_combout\,
	datad => \a11|B_outreg~83_combout\,
	combout => \a11|B_outreg~84_combout\);

-- Location: FF_X32_Y19_N19
\a11|B_outreg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|B_outreg~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|B_outreg\(13));

-- Location: LCCOMB_X32_Y19_N22
\a20|W_outreg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \a20|W_outreg~8_combout\ = (\a11|MEM_cont_outreg\(1) & (\a11|B_outreg\(13))) # (!\a11|MEM_cont_outreg\(1) & ((\a12|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a11|B_outreg\(13),
	datac => \a11|MEM_cont_outreg\(1),
	datad => \a12|Add0~26_combout\,
	combout => \a20|W_outreg~8_combout\);

-- Location: FF_X32_Y19_N23
\a20|W_outreg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a20|W_outreg~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a20|W_outreg\(13));

-- Location: LCCOMB_X32_Y22_N24
\a22|i5_W2_outreg[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \a22|i5_W2_outreg[12]~12_combout\ = (\a21|mem2_rtl_0_bypass\(38) & ((\a21|mem2~26_combout\ & (\a21|mem2_rtl_0_bypass\(37))) # (!\a21|mem2~26_combout\ & ((\a21|mem2_rtl_0|auto_generated|ram_block1a12\))))) # (!\a21|mem2_rtl_0_bypass\(38) & 
-- (((\a21|mem2_rtl_0_bypass\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a21|mem2_rtl_0_bypass\(38),
	datab => \a21|mem2~26_combout\,
	datac => \a21|mem2_rtl_0_bypass\(37),
	datad => \a21|mem2_rtl_0|auto_generated|ram_block1a12\,
	combout => \a22|i5_W2_outreg[12]~12_combout\);

-- Location: LCCOMB_X31_Y22_N24
\a22|i5_W2_outreg[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a22|i5_W2_outreg[12]~feeder_combout\ = \a22|i5_W2_outreg[12]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a22|i5_W2_outreg[12]~12_combout\,
	combout => \a22|i5_W2_outreg[12]~feeder_combout\);

-- Location: FF_X31_Y22_N25
\a22|i5_W2_outreg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a22|i5_W2_outreg[12]~feeder_combout\,
	asdata => \a20|W_outreg\(12),
	sload => \a20|ALT_INV_MEM_contreg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a22|i5_W2_outreg\(12));

-- Location: FF_X29_Y19_N7
\a8|RAM[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(12),
	sload => VCC,
	ena => \a8|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[0][12]~q\);

-- Location: FF_X29_Y19_N17
\a8|RAM[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(12),
	sload => VCC,
	ena => \a8|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[1][12]~q\);

-- Location: LCCOMB_X29_Y19_N16
\a11|A_outreg~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~69_combout\ = (\a7|rf_a1reg\(0) & (((\a8|RAM[1][12]~q\) # (\a7|rf_a1reg\(1))))) # (!\a7|rf_a1reg\(0) & (\a8|RAM[0][12]~q\ & ((!\a7|rf_a1reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[0][12]~q\,
	datab => \a7|rf_a1reg\(0),
	datac => \a8|RAM[1][12]~q\,
	datad => \a7|rf_a1reg\(1),
	combout => \a11|A_outreg~69_combout\);

-- Location: FF_X30_Y19_N3
\a8|RAM[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(12),
	sload => VCC,
	ena => \a8|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[3][12]~q\);

-- Location: FF_X30_Y19_N1
\a8|RAM[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(12),
	sload => VCC,
	ena => \a8|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[2][12]~q\);

-- Location: LCCOMB_X30_Y19_N0
\a11|A_outreg~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~70_combout\ = (\a11|A_outreg~69_combout\ & ((\a8|RAM[3][12]~q\) # ((!\a7|rf_a1reg\(1))))) # (!\a11|A_outreg~69_combout\ & (((\a8|RAM[2][12]~q\ & \a7|rf_a1reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg~69_combout\,
	datab => \a8|RAM[3][12]~q\,
	datac => \a8|RAM[2][12]~q\,
	datad => \a7|rf_a1reg\(1),
	combout => \a11|A_outreg~70_combout\);

-- Location: FF_X31_Y18_N11
\a8|RAM[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(12),
	sload => VCC,
	ena => \a8|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[7][12]~q\);

-- Location: FF_X31_Y18_N17
\a8|RAM[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(12),
	sload => VCC,
	ena => \a8|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[5][12]~q\);

-- Location: FF_X32_Y18_N13
\a8|RAM[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(12),
	sload => VCC,
	ena => \a8|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[6][12]~q\);

-- Location: FF_X32_Y18_N3
\a8|RAM[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(12),
	sload => VCC,
	ena => \a8|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[4][12]~q\);

-- Location: LCCOMB_X32_Y18_N2
\a11|A_outreg~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~72_combout\ = (\a7|rf_a1reg\(1) & ((\a8|RAM[6][12]~q\) # ((\a7|rf_a1reg\(0))))) # (!\a7|rf_a1reg\(1) & (((\a8|RAM[4][12]~q\ & !\a7|rf_a1reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[6][12]~q\,
	datab => \a7|rf_a1reg\(1),
	datac => \a8|RAM[4][12]~q\,
	datad => \a7|rf_a1reg\(0),
	combout => \a11|A_outreg~72_combout\);

-- Location: LCCOMB_X31_Y18_N16
\a11|A_outreg~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~73_combout\ = (\a7|rf_a1reg\(0) & ((\a11|A_outreg~72_combout\ & (\a8|RAM[7][12]~q\)) # (!\a11|A_outreg~72_combout\ & ((\a8|RAM[5][12]~q\))))) # (!\a7|rf_a1reg\(0) & (((\a11|A_outreg~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a1reg\(0),
	datab => \a8|RAM[7][12]~q\,
	datac => \a8|RAM[5][12]~q\,
	datad => \a11|A_outreg~72_combout\,
	combout => \a11|A_outreg~73_combout\);

-- Location: LCCOMB_X32_Y22_N2
\a21|mem2_d1_out[12]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_d1_out[12]~9_combout\ = (\a20|MEM_contreg\(0) & \a22|i5_W2_outreg[12]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a20|MEM_contreg\(0),
	datad => \a22|i5_W2_outreg[12]~12_combout\,
	combout => \a21|mem2_d1_out[12]~9_combout\);

-- Location: LCCOMB_X32_Y22_N18
\a11|A_outreg~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~71_combout\ = (\a11|A_outreg[7]~12_combout\ & (((\a11|A_outreg[7]~11_combout\) # (\a21|mem2_d1_out[12]~9_combout\)))) # (!\a11|A_outreg[7]~12_combout\ & (\a22|i5_W2_outreg\(12) & (!\a11|A_outreg[7]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a22|i5_W2_outreg\(12),
	datab => \a11|A_outreg[7]~12_combout\,
	datac => \a11|A_outreg[7]~11_combout\,
	datad => \a21|mem2_d1_out[12]~9_combout\,
	combout => \a11|A_outreg~71_combout\);

-- Location: LCCOMB_X32_Y22_N16
\a11|A_outreg~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~74_combout\ = (\a11|A_outreg[7]~11_combout\ & ((\a11|A_outreg~71_combout\ & ((\a11|A_outreg~73_combout\))) # (!\a11|A_outreg~71_combout\ & (\a11|A_outreg~70_combout\)))) # (!\a11|A_outreg[7]~11_combout\ & (((\a11|A_outreg~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg~70_combout\,
	datab => \a11|A_outreg[7]~11_combout\,
	datac => \a11|A_outreg~73_combout\,
	datad => \a11|A_outreg~71_combout\,
	combout => \a11|A_outreg~74_combout\);

-- Location: LCCOMB_X32_Y22_N10
\a11|A_outreg~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~75_combout\ = (!\a19|N0~4_combout\ & ((\a19|N2~0_combout\ & (\a20|W_outreg\(12))) # (!\a19|N2~0_combout\ & ((\a11|A_outreg~74_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a20|W_outreg\(12),
	datab => \a19|N0~4_combout\,
	datac => \a19|N2~0_combout\,
	datad => \a11|A_outreg~74_combout\,
	combout => \a11|A_outreg~75_combout\);

-- Location: LCCOMB_X32_Y22_N0
\a11|A_outreg~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~76_combout\ = (\a11|A_outreg~75_combout\) # ((\a19|N0~4_combout\ & \a12|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a19|N0~4_combout\,
	datac => \a12|Add0~24_combout\,
	datad => \a11|A_outreg~75_combout\,
	combout => \a11|A_outreg~76_combout\);

-- Location: FF_X32_Y22_N1
\a11|A_outreg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|A_outreg~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|A_outreg\(12));

-- Location: LCCOMB_X32_Y22_N4
\a11|B_outreg~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~142_combout\ = (\a19|P0~2_combout\ & (((\a12|Add0~24_combout\)))) # (!\a19|P0~2_combout\ & (\a20|W_outreg\(12) & (\a19|P2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a20|W_outreg\(12),
	datab => \a19|P2~combout\,
	datac => \a19|P0~2_combout\,
	datad => \a12|Add0~24_combout\,
	combout => \a11|B_outreg~142_combout\);

-- Location: LCCOMB_X32_Y18_N12
\a11|B_outreg~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~85_combout\ = (\a7|rf_a2reg\(0) & (((\a7|rf_a2reg\(1))))) # (!\a7|rf_a2reg\(0) & ((\a7|rf_a2reg\(1) & ((\a8|RAM[6][12]~q\))) # (!\a7|rf_a2reg\(1) & (\a8|RAM[4][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(0),
	datab => \a8|RAM[4][12]~q\,
	datac => \a8|RAM[6][12]~q\,
	datad => \a7|rf_a2reg\(1),
	combout => \a11|B_outreg~85_combout\);

-- Location: LCCOMB_X31_Y18_N10
\a11|B_outreg~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~86_combout\ = (\a7|rf_a2reg\(0) & ((\a11|B_outreg~85_combout\ & (\a8|RAM[7][12]~q\)) # (!\a11|B_outreg~85_combout\ & ((\a8|RAM[5][12]~q\))))) # (!\a7|rf_a2reg\(0) & (\a11|B_outreg~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(0),
	datab => \a11|B_outreg~85_combout\,
	datac => \a8|RAM[7][12]~q\,
	datad => \a8|RAM[5][12]~q\,
	combout => \a11|B_outreg~86_combout\);

-- Location: LCCOMB_X29_Y19_N6
\a11|B_outreg~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~87_combout\ = (\a7|rf_a2reg\(1) & (((\a7|rf_a2reg\(0))))) # (!\a7|rf_a2reg\(1) & ((\a7|rf_a2reg\(0) & (\a8|RAM[1][12]~q\)) # (!\a7|rf_a2reg\(0) & ((\a8|RAM[0][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(1),
	datab => \a8|RAM[1][12]~q\,
	datac => \a8|RAM[0][12]~q\,
	datad => \a7|rf_a2reg\(0),
	combout => \a11|B_outreg~87_combout\);

-- Location: LCCOMB_X30_Y19_N2
\a11|B_outreg~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~88_combout\ = (\a11|B_outreg~87_combout\ & (((\a8|RAM[3][12]~q\) # (!\a7|rf_a2reg\(1))))) # (!\a11|B_outreg~87_combout\ & (\a8|RAM[2][12]~q\ & ((\a7|rf_a2reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~87_combout\,
	datab => \a8|RAM[2][12]~q\,
	datac => \a8|RAM[3][12]~q\,
	datad => \a7|rf_a2reg\(1),
	combout => \a11|B_outreg~88_combout\);

-- Location: LCCOMB_X31_Y22_N6
\a11|B_outreg~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~89_combout\ = (\a11|B_outreg[10]~10_combout\ & (\a11|B_outreg~88_combout\ & ((!\a11|B_outreg[10]~7_combout\)))) # (!\a11|B_outreg[10]~10_combout\ & (((\a22|i5_W2_outreg\(12)) # (\a11|B_outreg[10]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~88_combout\,
	datab => \a22|i5_W2_outreg\(12),
	datac => \a11|B_outreg[10]~10_combout\,
	datad => \a11|B_outreg[10]~7_combout\,
	combout => \a11|B_outreg~89_combout\);

-- Location: LCCOMB_X32_Y22_N28
\a11|B_outreg~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~90_combout\ = (\a11|B_outreg[10]~7_combout\ & ((\a11|B_outreg~89_combout\ & ((\a21|mem2_d1_out[12]~9_combout\))) # (!\a11|B_outreg~89_combout\ & (\a11|B_outreg~86_combout\)))) # (!\a11|B_outreg[10]~7_combout\ & 
-- (((\a11|B_outreg~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~86_combout\,
	datab => \a11|B_outreg[10]~7_combout\,
	datac => \a11|B_outreg~89_combout\,
	datad => \a21|mem2_d1_out[12]~9_combout\,
	combout => \a11|B_outreg~90_combout\);

-- Location: LCCOMB_X32_Y22_N26
\a11|B_outreg~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~143_combout\ = (\a11|B_outreg~142_combout\) # ((\a11|B_outreg~73_combout\ & \a11|B_outreg~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a11|B_outreg~73_combout\,
	datac => \a11|B_outreg~142_combout\,
	datad => \a11|B_outreg~90_combout\,
	combout => \a11|B_outreg~143_combout\);

-- Location: FF_X32_Y22_N27
\a11|B_outreg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|B_outreg~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|B_outreg\(12));

-- Location: LCCOMB_X32_Y22_N30
\a20|W_outreg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \a20|W_outreg~9_combout\ = (\a11|MEM_cont_outreg\(1) & (\a11|B_outreg\(12))) # (!\a11|MEM_cont_outreg\(1) & ((\a12|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a11|MEM_cont_outreg\(1),
	datac => \a11|B_outreg\(12),
	datad => \a12|Add0~24_combout\,
	combout => \a20|W_outreg~9_combout\);

-- Location: FF_X32_Y22_N31
\a20|W_outreg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a20|W_outreg~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a20|W_outreg\(12));

-- Location: LCCOMB_X34_Y19_N10
\a21|mem2_rtl_0_bypass[35]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[35]~feeder_combout\ = \a20|W_outreg\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a20|W_outreg\(11),
	combout => \a21|mem2_rtl_0_bypass[35]~feeder_combout\);

-- Location: FF_X34_Y19_N11
\a21|mem2_rtl_0_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[35]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(35));

-- Location: LCCOMB_X34_Y19_N20
\a22|i5_W2_outreg[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \a22|i5_W2_outreg[11]~11_combout\ = (\a21|mem2~50\ & ((\a21|mem2_rtl_0_bypass\(35)))) # (!\a21|mem2~50\ & (\a21|mem2_rtl_0|auto_generated|ram_block1a11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a21|mem2~50\,
	datab => \a21|mem2_rtl_0|auto_generated|ram_block1a11\,
	datad => \a21|mem2_rtl_0_bypass\(35),
	combout => \a22|i5_W2_outreg[11]~11_combout\);

-- Location: FF_X34_Y19_N21
\a22|i5_W2_outreg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a22|i5_W2_outreg[11]~11_combout\,
	asdata => \a20|W_outreg\(11),
	sload => \a20|ALT_INV_MEM_contreg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a22|i5_W2_outreg\(11));

-- Location: FF_X31_Y18_N1
\a8|RAM[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(11),
	sload => VCC,
	ena => \a8|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[5][11]~q\);

-- Location: LCCOMB_X32_Y18_N4
\a11|B_outreg~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~92_combout\ = (\a7|rf_a2reg\(0) & (((\a7|rf_a2reg\(1))))) # (!\a7|rf_a2reg\(0) & ((\a7|rf_a2reg\(1) & ((\a8|RAM[6][11]~q\))) # (!\a7|rf_a2reg\(1) & (\a8|RAM[4][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(0),
	datab => \a8|RAM[4][11]~q\,
	datac => \a8|RAM[6][11]~q\,
	datad => \a7|rf_a2reg\(1),
	combout => \a11|B_outreg~92_combout\);

-- Location: LCCOMB_X31_Y18_N26
\a11|B_outreg~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~93_combout\ = (\a7|rf_a2reg\(0) & ((\a11|B_outreg~92_combout\ & ((\a8|RAM[7][11]~q\))) # (!\a11|B_outreg~92_combout\ & (\a8|RAM[5][11]~q\)))) # (!\a7|rf_a2reg\(0) & (((\a11|B_outreg~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(0),
	datab => \a8|RAM[5][11]~q\,
	datac => \a8|RAM[7][11]~q\,
	datad => \a11|B_outreg~92_combout\,
	combout => \a11|B_outreg~93_combout\);

-- Location: LCCOMB_X29_Y19_N8
\a11|B_outreg~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~95_combout\ = (\a7|rf_a2reg\(1) & (((\a7|rf_a2reg\(0))))) # (!\a7|rf_a2reg\(1) & ((\a7|rf_a2reg\(0) & ((\a8|RAM[1][11]~q\))) # (!\a7|rf_a2reg\(0) & (\a8|RAM[0][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(1),
	datab => \a8|RAM[0][11]~q\,
	datac => \a8|RAM[1][11]~q\,
	datad => \a7|rf_a2reg\(0),
	combout => \a11|B_outreg~95_combout\);

-- Location: LCCOMB_X30_Y19_N16
\a11|B_outreg~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~96_combout\ = (\a11|B_outreg~95_combout\ & ((\a8|RAM[3][11]~q\) # ((!\a7|rf_a2reg\(1))))) # (!\a11|B_outreg~95_combout\ & (((\a8|RAM[2][11]~q\ & \a7|rf_a2reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~95_combout\,
	datab => \a8|RAM[3][11]~q\,
	datac => \a8|RAM[2][11]~q\,
	datad => \a7|rf_a2reg\(1),
	combout => \a11|B_outreg~96_combout\);

-- Location: LCCOMB_X31_Y19_N8
\a11|B_outreg~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~97_combout\ = (\a11|B_outreg[10]~7_combout\ & (((\a11|B_outreg[10]~10_combout\)))) # (!\a11|B_outreg[10]~7_combout\ & ((\a11|B_outreg[10]~10_combout\ & ((\a11|B_outreg~96_combout\))) # (!\a11|B_outreg[10]~10_combout\ & 
-- (\a22|i5_W2_outreg\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a22|i5_W2_outreg\(11),
	datab => \a11|B_outreg[10]~7_combout\,
	datac => \a11|B_outreg~96_combout\,
	datad => \a11|B_outreg[10]~10_combout\,
	combout => \a11|B_outreg~97_combout\);

-- Location: LCCOMB_X31_Y19_N6
\a11|B_outreg~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~94_combout\ = (\a11|B_outreg~73_combout\ & ((\a11|B_outreg[10]~10_combout\) # ((\a21|mem2_d1_out[11]~10_combout\) # (!\a11|B_outreg[10]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg[10]~10_combout\,
	datab => \a11|B_outreg[10]~7_combout\,
	datac => \a11|B_outreg~73_combout\,
	datad => \a21|mem2_d1_out[11]~10_combout\,
	combout => \a11|B_outreg~94_combout\);

-- Location: LCCOMB_X31_Y19_N10
\a11|B_outreg~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~98_combout\ = (\a11|B_outreg~94_combout\ & ((\a11|B_outreg[10]~7_combout\ & ((\a11|B_outreg~93_combout\) # (!\a11|B_outreg~97_combout\))) # (!\a11|B_outreg[10]~7_combout\ & ((\a11|B_outreg~97_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~93_combout\,
	datab => \a11|B_outreg[10]~7_combout\,
	datac => \a11|B_outreg~97_combout\,
	datad => \a11|B_outreg~94_combout\,
	combout => \a11|B_outreg~98_combout\);

-- Location: LCCOMB_X31_Y19_N20
\a11|B_outreg~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~99_combout\ = (\a11|B_outreg~91_combout\) # ((\a11|B_outreg~98_combout\) # ((\a19|P0~2_combout\ & \a12|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~91_combout\,
	datab => \a19|P0~2_combout\,
	datac => \a12|Add0~22_combout\,
	datad => \a11|B_outreg~98_combout\,
	combout => \a11|B_outreg~99_combout\);

-- Location: FF_X31_Y19_N21
\a11|B_outreg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|B_outreg~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|B_outreg\(11));

-- Location: LCCOMB_X35_Y19_N8
\a12|alu2_b[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|alu2_b[11]~10_combout\ = (\a11|EX_cont_outreg\(7) & (\a11|B_outreg\(11))) # (!\a11|EX_cont_outreg\(7) & ((\a11|se16reg\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a11|B_outreg\(11),
	datac => \a11|se16reg\(10),
	datad => \a11|EX_cont_outreg\(7),
	combout => \a12|alu2_b[11]~10_combout\);

-- Location: LCCOMB_X31_Y19_N22
\a20|W_outreg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \a20|W_outreg~10_combout\ = (\a11|MEM_cont_outreg\(1) & ((\a11|B_outreg\(11)))) # (!\a11|MEM_cont_outreg\(1) & (\a12|Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|MEM_cont_outreg\(1),
	datac => \a12|Add0~22_combout\,
	datad => \a11|B_outreg\(11),
	combout => \a20|W_outreg~10_combout\);

-- Location: FF_X31_Y19_N23
\a20|W_outreg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a20|W_outreg~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a20|W_outreg\(11));

-- Location: LCCOMB_X35_Y19_N2
\a22|i5_W2_outreg[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \a22|i5_W2_outreg[10]~10_combout\ = (\a21|mem2~51\ & (\a21|mem2_rtl_0_bypass\(33))) # (!\a21|mem2~51\ & ((\a21|mem2_rtl_0|auto_generated|ram_block1a10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a21|mem2_rtl_0_bypass\(33),
	datab => \a21|mem2~51\,
	datad => \a21|mem2_rtl_0|auto_generated|ram_block1a10\,
	combout => \a22|i5_W2_outreg[10]~10_combout\);

-- Location: FF_X35_Y19_N3
\a22|i5_W2_outreg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a22|i5_W2_outreg[10]~10_combout\,
	asdata => \a20|W_outreg\(10),
	sload => \a20|ALT_INV_MEM_contreg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a22|i5_W2_outreg\(10));

-- Location: FF_X30_Y18_N1
\a8|RAM[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(10),
	sload => VCC,
	ena => \a8|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[1][10]~q\);

-- Location: FF_X30_Y18_N27
\a8|RAM[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(10),
	sload => VCC,
	ena => \a8|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[0][10]~q\);

-- Location: LCCOMB_X30_Y18_N26
\a11|A_outreg~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~85_combout\ = (\a7|rf_a1reg\(0) & ((\a8|RAM[1][10]~q\) # ((\a7|rf_a1reg\(1))))) # (!\a7|rf_a1reg\(0) & (((\a8|RAM[0][10]~q\ & !\a7|rf_a1reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a1reg\(0),
	datab => \a8|RAM[1][10]~q\,
	datac => \a8|RAM[0][10]~q\,
	datad => \a7|rf_a1reg\(1),
	combout => \a11|A_outreg~85_combout\);

-- Location: FF_X30_Y19_N13
\a8|RAM[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(10),
	sload => VCC,
	ena => \a8|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[2][10]~q\);

-- Location: FF_X30_Y19_N7
\a8|RAM[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(10),
	sload => VCC,
	ena => \a8|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[3][10]~q\);

-- Location: LCCOMB_X30_Y19_N12
\a11|A_outreg~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~86_combout\ = (\a7|rf_a1reg\(1) & ((\a11|A_outreg~85_combout\ & ((\a8|RAM[3][10]~q\))) # (!\a11|A_outreg~85_combout\ & (\a8|RAM[2][10]~q\)))) # (!\a7|rf_a1reg\(1) & (\a11|A_outreg~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a1reg\(1),
	datab => \a11|A_outreg~85_combout\,
	datac => \a8|RAM[2][10]~q\,
	datad => \a8|RAM[3][10]~q\,
	combout => \a11|A_outreg~86_combout\);

-- Location: FF_X31_Y18_N31
\a8|RAM[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(10),
	sload => VCC,
	ena => \a8|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[7][10]~q\);

-- Location: FF_X32_Y18_N21
\a8|RAM[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(10),
	sload => VCC,
	ena => \a8|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[6][10]~q\);

-- Location: FF_X32_Y18_N19
\a8|RAM[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(10),
	sload => VCC,
	ena => \a8|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[4][10]~q\);

-- Location: LCCOMB_X32_Y18_N18
\a11|A_outreg~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~88_combout\ = (\a7|rf_a1reg\(0) & (((\a7|rf_a1reg\(1))))) # (!\a7|rf_a1reg\(0) & ((\a7|rf_a1reg\(1) & (\a8|RAM[6][10]~q\)) # (!\a7|rf_a1reg\(1) & ((\a8|RAM[4][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a1reg\(0),
	datab => \a8|RAM[6][10]~q\,
	datac => \a8|RAM[4][10]~q\,
	datad => \a7|rf_a1reg\(1),
	combout => \a11|A_outreg~88_combout\);

-- Location: FF_X31_Y18_N21
\a8|RAM[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(10),
	sload => VCC,
	ena => \a8|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[5][10]~q\);

-- Location: LCCOMB_X31_Y18_N20
\a11|A_outreg~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~89_combout\ = (\a11|A_outreg~88_combout\ & ((\a8|RAM[7][10]~q\) # ((!\a7|rf_a1reg\(0))))) # (!\a11|A_outreg~88_combout\ & (((\a8|RAM[5][10]~q\ & \a7|rf_a1reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[7][10]~q\,
	datab => \a11|A_outreg~88_combout\,
	datac => \a8|RAM[5][10]~q\,
	datad => \a7|rf_a1reg\(0),
	combout => \a11|A_outreg~89_combout\);

-- Location: LCCOMB_X35_Y19_N12
\a21|mem2_d1_out[10]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_d1_out[10]~11_combout\ = (\a20|MEM_contreg\(0) & \a22|i5_W2_outreg[10]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a20|MEM_contreg\(0),
	datad => \a22|i5_W2_outreg[10]~10_combout\,
	combout => \a21|mem2_d1_out[10]~11_combout\);

-- Location: LCCOMB_X35_Y19_N24
\a11|A_outreg~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~87_combout\ = (\a11|A_outreg[7]~11_combout\ & (\a11|A_outreg[7]~12_combout\)) # (!\a11|A_outreg[7]~11_combout\ & ((\a11|A_outreg[7]~12_combout\ & ((\a21|mem2_d1_out[10]~11_combout\))) # (!\a11|A_outreg[7]~12_combout\ & 
-- (\a22|i5_W2_outreg\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg[7]~11_combout\,
	datab => \a11|A_outreg[7]~12_combout\,
	datac => \a22|i5_W2_outreg\(10),
	datad => \a21|mem2_d1_out[10]~11_combout\,
	combout => \a11|A_outreg~87_combout\);

-- Location: LCCOMB_X35_Y19_N6
\a11|A_outreg~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~90_combout\ = (\a11|A_outreg[7]~11_combout\ & ((\a11|A_outreg~87_combout\ & ((\a11|A_outreg~89_combout\))) # (!\a11|A_outreg~87_combout\ & (\a11|A_outreg~86_combout\)))) # (!\a11|A_outreg[7]~11_combout\ & (((\a11|A_outreg~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg[7]~11_combout\,
	datab => \a11|A_outreg~86_combout\,
	datac => \a11|A_outreg~89_combout\,
	datad => \a11|A_outreg~87_combout\,
	combout => \a11|A_outreg~90_combout\);

-- Location: LCCOMB_X35_Y19_N18
\a11|A_outreg~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~91_combout\ = (!\a19|N0~4_combout\ & ((\a19|N2~0_combout\ & (\a20|W_outreg\(10))) # (!\a19|N2~0_combout\ & ((\a11|A_outreg~90_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a20|W_outreg\(10),
	datab => \a19|N0~4_combout\,
	datac => \a19|N2~0_combout\,
	datad => \a11|A_outreg~90_combout\,
	combout => \a11|A_outreg~91_combout\);

-- Location: LCCOMB_X35_Y19_N22
\a11|A_outreg~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~92_combout\ = (\a11|A_outreg~91_combout\) # ((\a12|Add0~20_combout\ & \a19|N0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a12|Add0~20_combout\,
	datab => \a19|N0~4_combout\,
	datad => \a11|A_outreg~91_combout\,
	combout => \a11|A_outreg~92_combout\);

-- Location: FF_X35_Y19_N23
\a11|A_outreg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|A_outreg~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|A_outreg\(10));

-- Location: LCCOMB_X35_Y19_N30
\a11|B_outreg~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~140_combout\ = (\a19|P0~2_combout\ & (((\a12|Add0~20_combout\)))) # (!\a19|P0~2_combout\ & (\a20|W_outreg\(10) & (\a19|P2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a20|W_outreg\(10),
	datab => \a19|P2~combout\,
	datac => \a19|P0~2_combout\,
	datad => \a12|Add0~20_combout\,
	combout => \a11|B_outreg~140_combout\);

-- Location: LCCOMB_X30_Y18_N0
\a11|B_outreg~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~102_combout\ = (\a7|rf_a2reg\(1) & (((\a7|rf_a2reg\(0))))) # (!\a7|rf_a2reg\(1) & ((\a7|rf_a2reg\(0) & ((\a8|RAM[1][10]~q\))) # (!\a7|rf_a2reg\(0) & (\a8|RAM[0][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[0][10]~q\,
	datab => \a7|rf_a2reg\(1),
	datac => \a8|RAM[1][10]~q\,
	datad => \a7|rf_a2reg\(0),
	combout => \a11|B_outreg~102_combout\);

-- Location: LCCOMB_X30_Y19_N6
\a11|B_outreg~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~103_combout\ = (\a11|B_outreg~102_combout\ & (((\a8|RAM[3][10]~q\) # (!\a7|rf_a2reg\(1))))) # (!\a11|B_outreg~102_combout\ & (\a8|RAM[2][10]~q\ & ((\a7|rf_a2reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[2][10]~q\,
	datab => \a11|B_outreg~102_combout\,
	datac => \a8|RAM[3][10]~q\,
	datad => \a7|rf_a2reg\(1),
	combout => \a11|B_outreg~103_combout\);

-- Location: LCCOMB_X35_Y19_N20
\a11|B_outreg~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~104_combout\ = (\a11|B_outreg[10]~10_combout\ & (\a11|B_outreg~103_combout\ & ((!\a11|B_outreg[10]~7_combout\)))) # (!\a11|B_outreg[10]~10_combout\ & (((\a22|i5_W2_outreg\(10)) # (\a11|B_outreg[10]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~103_combout\,
	datab => \a22|i5_W2_outreg\(10),
	datac => \a11|B_outreg[10]~10_combout\,
	datad => \a11|B_outreg[10]~7_combout\,
	combout => \a11|B_outreg~104_combout\);

-- Location: LCCOMB_X32_Y18_N20
\a11|B_outreg~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~100_combout\ = (\a7|rf_a2reg\(0) & (((\a7|rf_a2reg\(1))))) # (!\a7|rf_a2reg\(0) & ((\a7|rf_a2reg\(1) & ((\a8|RAM[6][10]~q\))) # (!\a7|rf_a2reg\(1) & (\a8|RAM[4][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(0),
	datab => \a8|RAM[4][10]~q\,
	datac => \a8|RAM[6][10]~q\,
	datad => \a7|rf_a2reg\(1),
	combout => \a11|B_outreg~100_combout\);

-- Location: LCCOMB_X31_Y18_N30
\a11|B_outreg~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~101_combout\ = (\a11|B_outreg~100_combout\ & (((\a8|RAM[7][10]~q\) # (!\a7|rf_a2reg\(0))))) # (!\a11|B_outreg~100_combout\ & (\a8|RAM[5][10]~q\ & ((\a7|rf_a2reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~100_combout\,
	datab => \a8|RAM[5][10]~q\,
	datac => \a8|RAM[7][10]~q\,
	datad => \a7|rf_a2reg\(0),
	combout => \a11|B_outreg~101_combout\);

-- Location: LCCOMB_X35_Y19_N16
\a11|B_outreg~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~105_combout\ = (\a11|B_outreg[10]~7_combout\ & ((\a11|B_outreg~104_combout\ & ((\a21|mem2_d1_out[10]~11_combout\))) # (!\a11|B_outreg~104_combout\ & (\a11|B_outreg~101_combout\)))) # (!\a11|B_outreg[10]~7_combout\ & 
-- (\a11|B_outreg~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg[10]~7_combout\,
	datab => \a11|B_outreg~104_combout\,
	datac => \a11|B_outreg~101_combout\,
	datad => \a21|mem2_d1_out[10]~11_combout\,
	combout => \a11|B_outreg~105_combout\);

-- Location: LCCOMB_X35_Y19_N14
\a11|B_outreg~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~141_combout\ = (\a11|B_outreg~140_combout\) # ((\a11|B_outreg~73_combout\ & \a11|B_outreg~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a11|B_outreg~73_combout\,
	datac => \a11|B_outreg~140_combout\,
	datad => \a11|B_outreg~105_combout\,
	combout => \a11|B_outreg~141_combout\);

-- Location: FF_X35_Y19_N15
\a11|B_outreg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|B_outreg~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|B_outreg\(10));

-- Location: LCCOMB_X35_Y19_N10
\a20|W_outreg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \a20|W_outreg~11_combout\ = (\a11|MEM_cont_outreg\(1) & (\a11|B_outreg\(10))) # (!\a11|MEM_cont_outreg\(1) & ((\a12|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a11|MEM_cont_outreg\(1),
	datac => \a11|B_outreg\(10),
	datad => \a12|Add0~20_combout\,
	combout => \a20|W_outreg~11_combout\);

-- Location: FF_X35_Y19_N11
\a20|W_outreg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a20|W_outreg~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a20|W_outreg\(10));

-- Location: LCCOMB_X36_Y22_N24
\a22|i5_W2_outreg[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \a22|i5_W2_outreg[9]~9_combout\ = (\a21|mem2~52\ & (\a21|mem2_rtl_0_bypass\(31))) # (!\a21|mem2~52\ & ((\a21|mem2_rtl_0|auto_generated|ram_block1a9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a21|mem2~52\,
	datab => \a21|mem2_rtl_0_bypass\(31),
	datad => \a21|mem2_rtl_0|auto_generated|ram_block1a9\,
	combout => \a22|i5_W2_outreg[9]~9_combout\);

-- Location: FF_X36_Y22_N25
\a22|i5_W2_outreg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a22|i5_W2_outreg[9]~9_combout\,
	asdata => \a20|W_outreg\(9),
	sload => \a20|ALT_INV_MEM_contreg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a22|i5_W2_outreg\(9));

-- Location: FF_X31_Y18_N15
\a8|RAM[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(9),
	sload => VCC,
	ena => \a8|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[7][9]~q\);

-- Location: FF_X31_Y18_N5
\a8|RAM[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(9),
	sload => VCC,
	ena => \a8|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[5][9]~q\);

-- Location: FF_X32_Y18_N9
\a8|RAM[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(9),
	sload => VCC,
	ena => \a8|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[6][9]~q\);

-- Location: FF_X32_Y18_N7
\a8|RAM[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(9),
	sload => VCC,
	ena => \a8|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[4][9]~q\);

-- Location: LCCOMB_X32_Y18_N6
\a11|A_outreg~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~96_combout\ = (\a7|rf_a1reg\(0) & (((\a7|rf_a1reg\(1))))) # (!\a7|rf_a1reg\(0) & ((\a7|rf_a1reg\(1) & (\a8|RAM[6][9]~q\)) # (!\a7|rf_a1reg\(1) & ((\a8|RAM[4][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a1reg\(0),
	datab => \a8|RAM[6][9]~q\,
	datac => \a8|RAM[4][9]~q\,
	datad => \a7|rf_a1reg\(1),
	combout => \a11|A_outreg~96_combout\);

-- Location: LCCOMB_X31_Y18_N4
\a11|A_outreg~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~97_combout\ = (\a7|rf_a1reg\(0) & ((\a11|A_outreg~96_combout\ & (\a8|RAM[7][9]~q\)) # (!\a11|A_outreg~96_combout\ & ((\a8|RAM[5][9]~q\))))) # (!\a7|rf_a1reg\(0) & (((\a11|A_outreg~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a1reg\(0),
	datab => \a8|RAM[7][9]~q\,
	datac => \a8|RAM[5][9]~q\,
	datad => \a11|A_outreg~96_combout\,
	combout => \a11|A_outreg~97_combout\);

-- Location: FF_X30_Y19_N25
\a8|RAM[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(9),
	sload => VCC,
	ena => \a8|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[2][9]~q\);

-- Location: FF_X30_Y19_N11
\a8|RAM[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(9),
	sload => VCC,
	ena => \a8|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[3][9]~q\);

-- Location: LCCOMB_X29_Y19_N26
\a8|RAM[0][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a8|RAM[0][9]~feeder_combout\ = \a22|i5_W2_outreg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a22|i5_W2_outreg\(9),
	combout => \a8|RAM[0][9]~feeder_combout\);

-- Location: FF_X29_Y19_N27
\a8|RAM[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|RAM[0][9]~feeder_combout\,
	ena => \a8|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[0][9]~q\);

-- Location: LCCOMB_X29_Y19_N4
\a8|RAM[1][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a8|RAM[1][9]~feeder_combout\ = \a22|i5_W2_outreg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a22|i5_W2_outreg\(9),
	combout => \a8|RAM[1][9]~feeder_combout\);

-- Location: FF_X29_Y19_N5
\a8|RAM[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|RAM[1][9]~feeder_combout\,
	ena => \a8|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[1][9]~q\);

-- Location: LCCOMB_X29_Y19_N10
\a11|A_outreg~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~93_combout\ = (\a7|rf_a1reg\(0) & (((\a8|RAM[1][9]~q\) # (\a7|rf_a1reg\(1))))) # (!\a7|rf_a1reg\(0) & (\a8|RAM[0][9]~q\ & ((!\a7|rf_a1reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[0][9]~q\,
	datab => \a8|RAM[1][9]~q\,
	datac => \a7|rf_a1reg\(0),
	datad => \a7|rf_a1reg\(1),
	combout => \a11|A_outreg~93_combout\);

-- Location: LCCOMB_X30_Y19_N10
\a11|A_outreg~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~94_combout\ = (\a7|rf_a1reg\(1) & ((\a11|A_outreg~93_combout\ & ((\a8|RAM[3][9]~q\))) # (!\a11|A_outreg~93_combout\ & (\a8|RAM[2][9]~q\)))) # (!\a7|rf_a1reg\(1) & (((\a11|A_outreg~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a1reg\(1),
	datab => \a8|RAM[2][9]~q\,
	datac => \a8|RAM[3][9]~q\,
	datad => \a11|A_outreg~93_combout\,
	combout => \a11|A_outreg~94_combout\);

-- Location: LCCOMB_X36_Y22_N8
\a11|A_outreg~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~95_combout\ = (\a11|A_outreg[7]~12_combout\ & (((\a11|A_outreg[7]~11_combout\)))) # (!\a11|A_outreg[7]~12_combout\ & ((\a11|A_outreg[7]~11_combout\ & ((\a11|A_outreg~94_combout\))) # (!\a11|A_outreg[7]~11_combout\ & 
-- (\a22|i5_W2_outreg\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg[7]~12_combout\,
	datab => \a22|i5_W2_outreg\(9),
	datac => \a11|A_outreg[7]~11_combout\,
	datad => \a11|A_outreg~94_combout\,
	combout => \a11|A_outreg~95_combout\);

-- Location: LCCOMB_X36_Y22_N18
\a21|mem2_d1_out[9]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_d1_out[9]~12_combout\ = (\a20|MEM_contreg\(0) & \a22|i5_W2_outreg[9]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a20|MEM_contreg\(0),
	datad => \a22|i5_W2_outreg[9]~9_combout\,
	combout => \a21|mem2_d1_out[9]~12_combout\);

-- Location: LCCOMB_X36_Y22_N2
\a11|A_outreg~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~98_combout\ = (\a11|A_outreg[7]~12_combout\ & ((\a11|A_outreg~95_combout\ & (\a11|A_outreg~97_combout\)) # (!\a11|A_outreg~95_combout\ & ((\a21|mem2_d1_out[9]~12_combout\))))) # (!\a11|A_outreg[7]~12_combout\ & 
-- (((\a11|A_outreg~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg[7]~12_combout\,
	datab => \a11|A_outreg~97_combout\,
	datac => \a11|A_outreg~95_combout\,
	datad => \a21|mem2_d1_out[9]~12_combout\,
	combout => \a11|A_outreg~98_combout\);

-- Location: LCCOMB_X36_Y22_N28
\a11|A_outreg~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~99_combout\ = (!\a19|N0~4_combout\ & ((\a19|N2~0_combout\ & (\a20|W_outreg\(9))) # (!\a19|N2~0_combout\ & ((\a11|A_outreg~98_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a19|N0~4_combout\,
	datab => \a20|W_outreg\(9),
	datac => \a19|N2~0_combout\,
	datad => \a11|A_outreg~98_combout\,
	combout => \a11|A_outreg~99_combout\);

-- Location: LCCOMB_X36_Y22_N30
\a11|A_outreg~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~100_combout\ = (\a11|A_outreg~99_combout\) # ((\a12|Add0~18_combout\ & \a19|N0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a12|Add0~18_combout\,
	datac => \a19|N0~4_combout\,
	datad => \a11|A_outreg~99_combout\,
	combout => \a11|A_outreg~100_combout\);

-- Location: FF_X36_Y22_N31
\a11|A_outreg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|A_outreg~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|A_outreg\(9));

-- Location: LCCOMB_X36_Y22_N22
\a11|B_outreg~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~106_combout\ = (\a19|P0~2_combout\ & (((\a12|Add0~18_combout\)))) # (!\a19|P0~2_combout\ & (\a20|W_outreg\(9) & (\a19|P2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a19|P0~2_combout\,
	datab => \a20|W_outreg\(9),
	datac => \a19|P2~combout\,
	datad => \a12|Add0~18_combout\,
	combout => \a11|B_outreg~106_combout\);

-- Location: LCCOMB_X32_Y18_N8
\a11|B_outreg~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~110_combout\ = (\a7|rf_a2reg\(0) & (((\a7|rf_a2reg\(1))))) # (!\a7|rf_a2reg\(0) & ((\a7|rf_a2reg\(1) & ((\a8|RAM[6][9]~q\))) # (!\a7|rf_a2reg\(1) & (\a8|RAM[4][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[4][9]~q\,
	datab => \a7|rf_a2reg\(0),
	datac => \a8|RAM[6][9]~q\,
	datad => \a7|rf_a2reg\(1),
	combout => \a11|B_outreg~110_combout\);

-- Location: LCCOMB_X31_Y18_N14
\a11|B_outreg~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~111_combout\ = (\a7|rf_a2reg\(0) & ((\a11|B_outreg~110_combout\ & ((\a8|RAM[7][9]~q\))) # (!\a11|B_outreg~110_combout\ & (\a8|RAM[5][9]~q\)))) # (!\a7|rf_a2reg\(0) & (((\a11|B_outreg~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(0),
	datab => \a8|RAM[5][9]~q\,
	datac => \a8|RAM[7][9]~q\,
	datad => \a11|B_outreg~110_combout\,
	combout => \a11|B_outreg~111_combout\);

-- Location: LCCOMB_X29_Y19_N20
\a11|B_outreg~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~107_combout\ = (\a7|rf_a2reg\(1) & (((\a7|rf_a2reg\(0))))) # (!\a7|rf_a2reg\(1) & ((\a7|rf_a2reg\(0) & ((\a8|RAM[1][9]~q\))) # (!\a7|rf_a2reg\(0) & (\a8|RAM[0][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[0][9]~q\,
	datab => \a8|RAM[1][9]~q\,
	datac => \a7|rf_a2reg\(1),
	datad => \a7|rf_a2reg\(0),
	combout => \a11|B_outreg~107_combout\);

-- Location: LCCOMB_X30_Y19_N24
\a11|B_outreg~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~108_combout\ = (\a7|rf_a2reg\(1) & ((\a11|B_outreg~107_combout\ & (\a8|RAM[3][9]~q\)) # (!\a11|B_outreg~107_combout\ & ((\a8|RAM[2][9]~q\))))) # (!\a7|rf_a2reg\(1) & (((\a11|B_outreg~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[3][9]~q\,
	datab => \a7|rf_a2reg\(1),
	datac => \a8|RAM[2][9]~q\,
	datad => \a11|B_outreg~107_combout\,
	combout => \a11|B_outreg~108_combout\);

-- Location: LCCOMB_X36_Y22_N20
\a11|B_outreg~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~109_combout\ = (\a11|B_outreg[10]~10_combout\ & (((\a11|B_outreg[10]~7_combout\)))) # (!\a11|B_outreg[10]~10_combout\ & ((\a11|B_outreg[10]~7_combout\ & ((\a21|mem2_d1_out[9]~12_combout\))) # (!\a11|B_outreg[10]~7_combout\ & 
-- (\a22|i5_W2_outreg\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg[10]~10_combout\,
	datab => \a22|i5_W2_outreg\(9),
	datac => \a11|B_outreg[10]~7_combout\,
	datad => \a21|mem2_d1_out[9]~12_combout\,
	combout => \a11|B_outreg~109_combout\);

-- Location: LCCOMB_X36_Y22_N10
\a11|B_outreg~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~112_combout\ = (\a11|B_outreg[10]~10_combout\ & ((\a11|B_outreg~109_combout\ & (\a11|B_outreg~111_combout\)) # (!\a11|B_outreg~109_combout\ & ((\a11|B_outreg~108_combout\))))) # (!\a11|B_outreg[10]~10_combout\ & 
-- (((\a11|B_outreg~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg[10]~10_combout\,
	datab => \a11|B_outreg~111_combout\,
	datac => \a11|B_outreg~108_combout\,
	datad => \a11|B_outreg~109_combout\,
	combout => \a11|B_outreg~112_combout\);

-- Location: LCCOMB_X36_Y22_N0
\a11|B_outreg~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~113_combout\ = (\a11|B_outreg~106_combout\) # ((\a11|B_outreg~73_combout\ & \a11|B_outreg~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~106_combout\,
	datac => \a11|B_outreg~73_combout\,
	datad => \a11|B_outreg~112_combout\,
	combout => \a11|B_outreg~113_combout\);

-- Location: FF_X36_Y22_N1
\a11|B_outreg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|B_outreg~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|B_outreg\(9));

-- Location: LCCOMB_X36_Y22_N4
\a20|W_outreg~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \a20|W_outreg~12_combout\ = (\a11|MEM_cont_outreg\(1) & (\a11|B_outreg\(9))) # (!\a11|MEM_cont_outreg\(1) & ((\a12|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|MEM_cont_outreg\(1),
	datac => \a11|B_outreg\(9),
	datad => \a12|Add0~18_combout\,
	combout => \a20|W_outreg~12_combout\);

-- Location: FF_X36_Y22_N5
\a20|W_outreg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a20|W_outreg~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a20|W_outreg\(9));

-- Location: LCCOMB_X37_Y19_N18
\a22|i5_W2_outreg[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \a22|i5_W2_outreg[8]~8_combout\ = (\a21|mem2~53\ & (\a21|mem2_rtl_0_bypass\(29))) # (!\a21|mem2~53\ & ((\a21|mem2_rtl_0|auto_generated|ram_block1a8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a21|mem2~53\,
	datab => \a21|mem2_rtl_0_bypass\(29),
	datad => \a21|mem2_rtl_0|auto_generated|ram_block1a8\,
	combout => \a22|i5_W2_outreg[8]~8_combout\);

-- Location: FF_X37_Y19_N19
\a22|i5_W2_outreg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a22|i5_W2_outreg[8]~8_combout\,
	asdata => \a20|W_outreg\(8),
	sload => \a20|ALT_INV_MEM_contreg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a22|i5_W2_outreg\(8));

-- Location: FF_X31_Y18_N9
\a8|RAM[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(8),
	sload => VCC,
	ena => \a8|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[5][8]~q\);

-- Location: LCCOMB_X32_Y18_N16
\a11|B_outreg~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~118_combout\ = (\a7|rf_a2reg\(1) & (((\a8|RAM[6][8]~q\) # (\a7|rf_a2reg\(0))))) # (!\a7|rf_a2reg\(1) & (\a8|RAM[4][8]~q\ & ((!\a7|rf_a2reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(1),
	datab => \a8|RAM[4][8]~q\,
	datac => \a8|RAM[6][8]~q\,
	datad => \a7|rf_a2reg\(0),
	combout => \a11|B_outreg~118_combout\);

-- Location: LCCOMB_X31_Y18_N22
\a11|B_outreg~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~119_combout\ = (\a7|rf_a2reg\(0) & ((\a11|B_outreg~118_combout\ & ((\a8|RAM[7][8]~q\))) # (!\a11|B_outreg~118_combout\ & (\a8|RAM[5][8]~q\)))) # (!\a7|rf_a2reg\(0) & (((\a11|B_outreg~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(0),
	datab => \a8|RAM[5][8]~q\,
	datac => \a8|RAM[7][8]~q\,
	datad => \a11|B_outreg~118_combout\,
	combout => \a11|B_outreg~119_combout\);

-- Location: LCCOMB_X30_Y18_N12
\a11|B_outreg~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~115_combout\ = (\a7|rf_a2reg\(1) & (((\a7|rf_a2reg\(0))))) # (!\a7|rf_a2reg\(1) & ((\a7|rf_a2reg\(0) & ((\a8|RAM[1][8]~q\))) # (!\a7|rf_a2reg\(0) & (\a8|RAM[0][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(1),
	datab => \a8|RAM[0][8]~q\,
	datac => \a8|RAM[1][8]~q\,
	datad => \a7|rf_a2reg\(0),
	combout => \a11|B_outreg~115_combout\);

-- Location: LCCOMB_X30_Y19_N26
\a11|B_outreg~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~116_combout\ = (\a11|B_outreg~115_combout\ & (((\a8|RAM[3][8]~q\) # (!\a7|rf_a2reg\(1))))) # (!\a11|B_outreg~115_combout\ & (\a8|RAM[2][8]~q\ & ((\a7|rf_a2reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~115_combout\,
	datab => \a8|RAM[2][8]~q\,
	datac => \a8|RAM[3][8]~q\,
	datad => \a7|rf_a2reg\(1),
	combout => \a11|B_outreg~116_combout\);

-- Location: LCCOMB_X37_Y19_N4
\a11|B_outreg~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~117_combout\ = (\a11|B_outreg[10]~10_combout\ & (((\a11|B_outreg~116_combout\) # (\a11|B_outreg[10]~7_combout\)))) # (!\a11|B_outreg[10]~10_combout\ & (\a22|i5_W2_outreg\(8) & ((!\a11|B_outreg[10]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a22|i5_W2_outreg\(8),
	datab => \a11|B_outreg[10]~10_combout\,
	datac => \a11|B_outreg~116_combout\,
	datad => \a11|B_outreg[10]~7_combout\,
	combout => \a11|B_outreg~117_combout\);

-- Location: LCCOMB_X37_Y19_N10
\a11|B_outreg~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~120_combout\ = (\a11|B_outreg[10]~7_combout\ & ((\a11|B_outreg~117_combout\ & (\a11|B_outreg~119_combout\)) # (!\a11|B_outreg~117_combout\ & ((\a21|mem2_d1_out[8]~13_combout\))))) # (!\a11|B_outreg[10]~7_combout\ & 
-- (((\a11|B_outreg~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~119_combout\,
	datab => \a11|B_outreg[10]~7_combout\,
	datac => \a11|B_outreg~117_combout\,
	datad => \a21|mem2_d1_out[8]~13_combout\,
	combout => \a11|B_outreg~120_combout\);

-- Location: LCCOMB_X37_Y19_N6
\a11|B_outreg~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~121_combout\ = (\a11|B_outreg~114_combout\) # ((\a11|B_outreg~73_combout\ & \a11|B_outreg~120_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~114_combout\,
	datab => \a11|B_outreg~73_combout\,
	datad => \a11|B_outreg~120_combout\,
	combout => \a11|B_outreg~121_combout\);

-- Location: FF_X37_Y19_N7
\a11|B_outreg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|B_outreg~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|B_outreg\(8));

-- Location: LCCOMB_X37_Y19_N2
\a12|alu2_b[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|alu2_b[8]~13_combout\ = (\a11|EX_cont_outreg\(7) & (\a11|B_outreg\(8))) # (!\a11|EX_cont_outreg\(7) & ((\a11|se16reg\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg\(8),
	datac => \a11|se16reg\(10),
	datad => \a11|EX_cont_outreg\(7),
	combout => \a12|alu2_b[8]~13_combout\);

-- Location: LCCOMB_X37_Y19_N26
\a20|W_outreg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \a20|W_outreg~13_combout\ = (\a11|MEM_cont_outreg\(1) & ((\a11|B_outreg\(8)))) # (!\a11|MEM_cont_outreg\(1) & (\a12|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a11|MEM_cont_outreg\(1),
	datac => \a12|Add0~16_combout\,
	datad => \a11|B_outreg\(8),
	combout => \a20|W_outreg~13_combout\);

-- Location: FF_X37_Y19_N27
\a20|W_outreg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a20|W_outreg~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a20|W_outreg\(8));

-- Location: LCCOMB_X34_Y22_N24
\a22|i5_W2_outreg[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \a22|i5_W2_outreg[7]~7_combout\ = (\a21|mem2~48\ & (\a21|mem2_rtl_0_bypass\(27))) # (!\a21|mem2~48\ & ((\a21|mem2_rtl_0|auto_generated|ram_block1a7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a21|mem2~48\,
	datab => \a21|mem2_rtl_0_bypass\(27),
	datad => \a21|mem2_rtl_0|auto_generated|ram_block1a7\,
	combout => \a22|i5_W2_outreg[7]~7_combout\);

-- Location: FF_X34_Y22_N25
\a22|i5_W2_outreg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a22|i5_W2_outreg[7]~7_combout\,
	asdata => \a20|W_outreg\(7),
	sload => \a20|ALT_INV_MEM_contreg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a22|i5_W2_outreg\(7));

-- Location: FF_X31_Y18_N19
\a8|RAM[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(7),
	sload => VCC,
	ena => \a8|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[7][7]~q\);

-- Location: FF_X31_Y18_N25
\a8|RAM[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(7),
	sload => VCC,
	ena => \a8|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[5][7]~q\);

-- Location: FF_X32_Y18_N23
\a8|RAM[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(7),
	sload => VCC,
	ena => \a8|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[4][7]~q\);

-- Location: FF_X32_Y18_N25
\a8|RAM[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(7),
	sload => VCC,
	ena => \a8|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[6][7]~q\);

-- Location: LCCOMB_X32_Y18_N22
\a11|A_outreg~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~56_combout\ = (\a7|rf_a1reg\(0) & (\a7|rf_a1reg\(1))) # (!\a7|rf_a1reg\(0) & ((\a7|rf_a1reg\(1) & ((\a8|RAM[6][7]~q\))) # (!\a7|rf_a1reg\(1) & (\a8|RAM[4][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a1reg\(0),
	datab => \a7|rf_a1reg\(1),
	datac => \a8|RAM[4][7]~q\,
	datad => \a8|RAM[6][7]~q\,
	combout => \a11|A_outreg~56_combout\);

-- Location: LCCOMB_X31_Y18_N24
\a11|A_outreg~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~57_combout\ = (\a7|rf_a1reg\(0) & ((\a11|A_outreg~56_combout\ & (\a8|RAM[7][7]~q\)) # (!\a11|A_outreg~56_combout\ & ((\a8|RAM[5][7]~q\))))) # (!\a7|rf_a1reg\(0) & (((\a11|A_outreg~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a1reg\(0),
	datab => \a8|RAM[7][7]~q\,
	datac => \a8|RAM[5][7]~q\,
	datad => \a11|A_outreg~56_combout\,
	combout => \a11|A_outreg~57_combout\);

-- Location: FF_X31_Y20_N23
\a8|RAM[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(7),
	sload => VCC,
	ena => \a8|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[2][7]~q\);

-- Location: FF_X31_Y20_N1
\a8|RAM[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(7),
	sload => VCC,
	ena => \a8|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[3][7]~q\);

-- Location: FF_X30_Y20_N29
\a8|RAM[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(7),
	sload => VCC,
	ena => \a8|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[1][7]~q\);

-- Location: FF_X30_Y20_N15
\a8|RAM[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(7),
	sload => VCC,
	ena => \a8|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[0][7]~q\);

-- Location: LCCOMB_X30_Y20_N14
\a11|A_outreg~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~53_combout\ = (\a7|rf_a1reg\(0) & ((\a8|RAM[1][7]~q\) # ((\a7|rf_a1reg\(1))))) # (!\a7|rf_a1reg\(0) & (((\a8|RAM[0][7]~q\ & !\a7|rf_a1reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a1reg\(0),
	datab => \a8|RAM[1][7]~q\,
	datac => \a8|RAM[0][7]~q\,
	datad => \a7|rf_a1reg\(1),
	combout => \a11|A_outreg~53_combout\);

-- Location: LCCOMB_X31_Y20_N0
\a11|A_outreg~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~54_combout\ = (\a7|rf_a1reg\(1) & ((\a11|A_outreg~53_combout\ & ((\a8|RAM[3][7]~q\))) # (!\a11|A_outreg~53_combout\ & (\a8|RAM[2][7]~q\)))) # (!\a7|rf_a1reg\(1) & (((\a11|A_outreg~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[2][7]~q\,
	datab => \a7|rf_a1reg\(1),
	datac => \a8|RAM[3][7]~q\,
	datad => \a11|A_outreg~53_combout\,
	combout => \a11|A_outreg~54_combout\);

-- Location: LCCOMB_X35_Y22_N22
\a11|A_outreg~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~55_combout\ = (\a11|A_outreg[7]~11_combout\ & ((\a11|A_outreg~54_combout\) # ((\a11|A_outreg[7]~12_combout\)))) # (!\a11|A_outreg[7]~11_combout\ & (((\a22|i5_W2_outreg\(7) & !\a11|A_outreg[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg~54_combout\,
	datab => \a11|A_outreg[7]~11_combout\,
	datac => \a22|i5_W2_outreg\(7),
	datad => \a11|A_outreg[7]~12_combout\,
	combout => \a11|A_outreg~55_combout\);

-- Location: LCCOMB_X35_Y22_N20
\a21|mem2_d1_out[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_d1_out[7]~7_combout\ = (\a20|MEM_contreg\(0) & \a22|i5_W2_outreg[7]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a20|MEM_contreg\(0),
	datad => \a22|i5_W2_outreg[7]~7_combout\,
	combout => \a21|mem2_d1_out[7]~7_combout\);

-- Location: LCCOMB_X35_Y22_N16
\a11|A_outreg~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~58_combout\ = (\a11|A_outreg[7]~12_combout\ & ((\a11|A_outreg~55_combout\ & (\a11|A_outreg~57_combout\)) # (!\a11|A_outreg~55_combout\ & ((\a21|mem2_d1_out[7]~7_combout\))))) # (!\a11|A_outreg[7]~12_combout\ & 
-- (((\a11|A_outreg~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg[7]~12_combout\,
	datab => \a11|A_outreg~57_combout\,
	datac => \a11|A_outreg~55_combout\,
	datad => \a21|mem2_d1_out[7]~7_combout\,
	combout => \a11|A_outreg~58_combout\);

-- Location: LCCOMB_X35_Y22_N10
\a11|A_outreg~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~59_combout\ = (!\a19|N0~4_combout\ & ((\a19|N2~0_combout\ & (\a20|W_outreg\(7))) # (!\a19|N2~0_combout\ & ((\a11|A_outreg~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a20|W_outreg\(7),
	datab => \a19|N0~4_combout\,
	datac => \a19|N2~0_combout\,
	datad => \a11|A_outreg~58_combout\,
	combout => \a11|A_outreg~59_combout\);

-- Location: LCCOMB_X35_Y22_N8
\a11|A_outreg~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~60_combout\ = (\a11|A_outreg~59_combout\) # ((\a12|Add0~14_combout\ & \a19|N0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a12|Add0~14_combout\,
	datab => \a19|N0~4_combout\,
	datad => \a11|A_outreg~59_combout\,
	combout => \a11|A_outreg~60_combout\);

-- Location: FF_X35_Y22_N9
\a11|A_outreg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|A_outreg~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|A_outreg\(7));

-- Location: LCCOMB_X35_Y22_N26
\a11|B_outreg~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~66_combout\ = (\a19|P0~2_combout\ & (((\a12|Add0~14_combout\)))) # (!\a19|P0~2_combout\ & (\a20|W_outreg\(7) & (\a19|P2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a20|W_outreg\(7),
	datab => \a19|P0~2_combout\,
	datac => \a19|P2~combout\,
	datad => \a12|Add0~14_combout\,
	combout => \a11|B_outreg~66_combout\);

-- Location: LCCOMB_X32_Y18_N24
\a11|B_outreg~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~70_combout\ = (\a7|rf_a2reg\(0) & (((\a7|rf_a2reg\(1))))) # (!\a7|rf_a2reg\(0) & ((\a7|rf_a2reg\(1) & ((\a8|RAM[6][7]~q\))) # (!\a7|rf_a2reg\(1) & (\a8|RAM[4][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[4][7]~q\,
	datab => \a7|rf_a2reg\(0),
	datac => \a8|RAM[6][7]~q\,
	datad => \a7|rf_a2reg\(1),
	combout => \a11|B_outreg~70_combout\);

-- Location: LCCOMB_X31_Y18_N18
\a11|B_outreg~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~71_combout\ = (\a11|B_outreg~70_combout\ & (((\a8|RAM[7][7]~q\) # (!\a7|rf_a2reg\(0))))) # (!\a11|B_outreg~70_combout\ & (\a8|RAM[5][7]~q\ & ((\a7|rf_a2reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~70_combout\,
	datab => \a8|RAM[5][7]~q\,
	datac => \a8|RAM[7][7]~q\,
	datad => \a7|rf_a2reg\(0),
	combout => \a11|B_outreg~71_combout\);

-- Location: LCCOMB_X30_Y20_N28
\a11|B_outreg~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~67_combout\ = (\a7|rf_a2reg\(1) & (((\a7|rf_a2reg\(0))))) # (!\a7|rf_a2reg\(1) & ((\a7|rf_a2reg\(0) & ((\a8|RAM[1][7]~q\))) # (!\a7|rf_a2reg\(0) & (\a8|RAM[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[0][7]~q\,
	datab => \a7|rf_a2reg\(1),
	datac => \a8|RAM[1][7]~q\,
	datad => \a7|rf_a2reg\(0),
	combout => \a11|B_outreg~67_combout\);

-- Location: LCCOMB_X31_Y20_N22
\a11|B_outreg~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~68_combout\ = (\a7|rf_a2reg\(1) & ((\a11|B_outreg~67_combout\ & (\a8|RAM[3][7]~q\)) # (!\a11|B_outreg~67_combout\ & ((\a8|RAM[2][7]~q\))))) # (!\a7|rf_a2reg\(1) & (((\a11|B_outreg~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(1),
	datab => \a8|RAM[3][7]~q\,
	datac => \a8|RAM[2][7]~q\,
	datad => \a11|B_outreg~67_combout\,
	combout => \a11|B_outreg~68_combout\);

-- Location: LCCOMB_X35_Y22_N18
\a11|B_outreg~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~69_combout\ = (\a11|B_outreg[10]~7_combout\ & (((\a11|B_outreg[10]~10_combout\) # (\a21|mem2_d1_out[7]~7_combout\)))) # (!\a11|B_outreg[10]~7_combout\ & (\a22|i5_W2_outreg\(7) & (!\a11|B_outreg[10]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a22|i5_W2_outreg\(7),
	datab => \a11|B_outreg[10]~7_combout\,
	datac => \a11|B_outreg[10]~10_combout\,
	datad => \a21|mem2_d1_out[7]~7_combout\,
	combout => \a11|B_outreg~69_combout\);

-- Location: LCCOMB_X35_Y22_N28
\a11|B_outreg~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~72_combout\ = (\a11|B_outreg[10]~10_combout\ & ((\a11|B_outreg~69_combout\ & (\a11|B_outreg~71_combout\)) # (!\a11|B_outreg~69_combout\ & ((\a11|B_outreg~68_combout\))))) # (!\a11|B_outreg[10]~10_combout\ & (((\a11|B_outreg~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~71_combout\,
	datab => \a11|B_outreg~68_combout\,
	datac => \a11|B_outreg[10]~10_combout\,
	datad => \a11|B_outreg~69_combout\,
	combout => \a11|B_outreg~72_combout\);

-- Location: LCCOMB_X35_Y22_N30
\a11|B_outreg~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~74_combout\ = (\a11|B_outreg~66_combout\) # ((\a11|B_outreg~73_combout\ & \a11|B_outreg~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~66_combout\,
	datac => \a11|B_outreg~73_combout\,
	datad => \a11|B_outreg~72_combout\,
	combout => \a11|B_outreg~74_combout\);

-- Location: FF_X35_Y22_N31
\a11|B_outreg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|B_outreg~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|B_outreg\(7));

-- Location: LCCOMB_X35_Y22_N12
\a20|W_outreg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \a20|W_outreg~7_combout\ = (\a11|MEM_cont_outreg\(1) & (\a11|B_outreg\(7))) # (!\a11|MEM_cont_outreg\(1) & ((\a12|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|MEM_cont_outreg\(1),
	datac => \a11|B_outreg\(7),
	datad => \a12|Add0~14_combout\,
	combout => \a20|W_outreg~7_combout\);

-- Location: FF_X35_Y22_N13
\a20|W_outreg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a20|W_outreg~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a20|W_outreg\(7));

-- Location: LCCOMB_X34_Y20_N2
\a22|i5_W2_outreg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \a22|i5_W2_outreg[6]~6_combout\ = (\a21|mem2~47\ & (!\a21|mem2_rtl_0_bypass\(25))) # (!\a21|mem2~47\ & ((\a21|mem2_rtl_0|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a21|mem2_rtl_0_bypass\(25),
	datab => \a21|mem2~47\,
	datad => \a21|mem2_rtl_0|auto_generated|ram_block1a6\,
	combout => \a22|i5_W2_outreg[6]~6_combout\);

-- Location: FF_X34_Y20_N3
\a22|i5_W2_outreg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a22|i5_W2_outreg[6]~6_combout\,
	asdata => \a20|W_outreg\(6),
	sload => \a20|ALT_INV_MEM_contreg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a22|i5_W2_outreg\(6));

-- Location: FF_X31_Y17_N31
\a8|RAM[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(6),
	sload => VCC,
	ena => \a8|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[7][6]~q\);

-- Location: FF_X31_Y17_N21
\a8|RAM[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(6),
	sload => VCC,
	ena => \a8|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[5][6]~q\);

-- Location: FF_X32_Y17_N11
\a8|RAM[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(6),
	sload => VCC,
	ena => \a8|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[4][6]~q\);

-- Location: FF_X32_Y17_N5
\a8|RAM[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(6),
	sload => VCC,
	ena => \a8|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[6][6]~q\);

-- Location: LCCOMB_X32_Y17_N4
\a11|A_outreg~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~50_combout\ = (\a7|rf_a1reg\(0) & (((\a7|rf_a1reg\(1))))) # (!\a7|rf_a1reg\(0) & ((\a7|rf_a1reg\(1) & ((\a8|RAM[6][6]~q\))) # (!\a7|rf_a1reg\(1) & (\a8|RAM[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[4][6]~q\,
	datab => \a7|rf_a1reg\(0),
	datac => \a8|RAM[6][6]~q\,
	datad => \a7|rf_a1reg\(1),
	combout => \a11|A_outreg~50_combout\);

-- Location: LCCOMB_X31_Y17_N20
\a11|A_outreg~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~51_combout\ = (\a7|rf_a1reg\(0) & ((\a11|A_outreg~50_combout\ & (\a8|RAM[7][6]~q\)) # (!\a11|A_outreg~50_combout\ & ((\a8|RAM[5][6]~q\))))) # (!\a7|rf_a1reg\(0) & (((\a11|A_outreg~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[7][6]~q\,
	datab => \a7|rf_a1reg\(0),
	datac => \a8|RAM[5][6]~q\,
	datad => \a11|A_outreg~50_combout\,
	combout => \a11|A_outreg~51_combout\);

-- Location: FF_X31_Y20_N5
\a8|RAM[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(6),
	sload => VCC,
	ena => \a8|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[3][6]~q\);

-- Location: FF_X31_Y20_N15
\a8|RAM[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(6),
	sload => VCC,
	ena => \a8|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[2][6]~q\);

-- Location: FF_X29_Y19_N23
\a8|RAM[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(6),
	sload => VCC,
	ena => \a8|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[0][6]~q\);

-- Location: FF_X29_Y19_N1
\a8|RAM[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(6),
	sload => VCC,
	ena => \a8|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[1][6]~q\);

-- Location: LCCOMB_X29_Y19_N0
\a11|A_outreg~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~47_combout\ = (\a7|rf_a1reg\(0) & (((\a8|RAM[1][6]~q\) # (\a7|rf_a1reg\(1))))) # (!\a7|rf_a1reg\(0) & (\a8|RAM[0][6]~q\ & ((!\a7|rf_a1reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[0][6]~q\,
	datab => \a7|rf_a1reg\(0),
	datac => \a8|RAM[1][6]~q\,
	datad => \a7|rf_a1reg\(1),
	combout => \a11|A_outreg~47_combout\);

-- Location: LCCOMB_X31_Y20_N14
\a11|A_outreg~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~48_combout\ = (\a7|rf_a1reg\(1) & ((\a11|A_outreg~47_combout\ & (\a8|RAM[3][6]~q\)) # (!\a11|A_outreg~47_combout\ & ((\a8|RAM[2][6]~q\))))) # (!\a7|rf_a1reg\(1) & (((\a11|A_outreg~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[3][6]~q\,
	datab => \a7|rf_a1reg\(1),
	datac => \a8|RAM[2][6]~q\,
	datad => \a11|A_outreg~47_combout\,
	combout => \a11|A_outreg~48_combout\);

-- Location: LCCOMB_X34_Y20_N20
\a21|mem2_d1_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_d1_out[6]~6_combout\ = (\a20|MEM_contreg\(0) & \a22|i5_W2_outreg[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a20|MEM_contreg\(0),
	datad => \a22|i5_W2_outreg[6]~6_combout\,
	combout => \a21|mem2_d1_out[6]~6_combout\);

-- Location: LCCOMB_X34_Y20_N24
\a11|A_outreg~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~49_combout\ = (\a11|A_outreg[7]~12_combout\ & (((\a11|A_outreg[7]~11_combout\) # (\a21|mem2_d1_out[6]~6_combout\)))) # (!\a11|A_outreg[7]~12_combout\ & (\a22|i5_W2_outreg\(6) & (!\a11|A_outreg[7]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a22|i5_W2_outreg\(6),
	datab => \a11|A_outreg[7]~12_combout\,
	datac => \a11|A_outreg[7]~11_combout\,
	datad => \a21|mem2_d1_out[6]~6_combout\,
	combout => \a11|A_outreg~49_combout\);

-- Location: LCCOMB_X34_Y20_N14
\a11|A_outreg~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~52_combout\ = (\a11|A_outreg[7]~11_combout\ & ((\a11|A_outreg~49_combout\ & (\a11|A_outreg~51_combout\)) # (!\a11|A_outreg~49_combout\ & ((\a11|A_outreg~48_combout\))))) # (!\a11|A_outreg[7]~11_combout\ & (((\a11|A_outreg~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg[7]~11_combout\,
	datab => \a11|A_outreg~51_combout\,
	datac => \a11|A_outreg~48_combout\,
	datad => \a11|A_outreg~49_combout\,
	combout => \a11|A_outreg~52_combout\);

-- Location: LCCOMB_X35_Y20_N20
\a11|A_outreg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg[6]~6_combout\ = (\a19|N2~0_combout\ & (\a20|W_outreg\(6))) # (!\a19|N2~0_combout\ & ((\a11|A_outreg~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a19|N2~0_combout\,
	datab => \a20|W_outreg\(6),
	datad => \a11|A_outreg~52_combout\,
	combout => \a11|A_outreg[6]~6_combout\);

-- Location: FF_X35_Y20_N21
\a11|A_outreg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|A_outreg[6]~6_combout\,
	asdata => \a12|Add0~12_combout\,
	sload => \a19|N0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|A_outreg\(6));

-- Location: LCCOMB_X32_Y17_N10
\a11|B_outreg~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~61_combout\ = (\a7|rf_a2reg\(1) & ((\a8|RAM[6][6]~q\) # ((\a7|rf_a2reg\(0))))) # (!\a7|rf_a2reg\(1) & (((\a8|RAM[4][6]~q\ & !\a7|rf_a2reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(1),
	datab => \a8|RAM[6][6]~q\,
	datac => \a8|RAM[4][6]~q\,
	datad => \a7|rf_a2reg\(0),
	combout => \a11|B_outreg~61_combout\);

-- Location: LCCOMB_X31_Y17_N30
\a11|B_outreg~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~62_combout\ = (\a7|rf_a2reg\(0) & ((\a11|B_outreg~61_combout\ & (\a8|RAM[7][6]~q\)) # (!\a11|B_outreg~61_combout\ & ((\a8|RAM[5][6]~q\))))) # (!\a7|rf_a2reg\(0) & (\a11|B_outreg~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(0),
	datab => \a11|B_outreg~61_combout\,
	datac => \a8|RAM[7][6]~q\,
	datad => \a8|RAM[5][6]~q\,
	combout => \a11|B_outreg~62_combout\);

-- Location: LCCOMB_X29_Y19_N28
\a11|B_outreg~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~58_combout\ = (\a7|rf_a2reg\(1) & (((\a7|rf_a2reg\(0))))) # (!\a7|rf_a2reg\(1) & ((\a7|rf_a2reg\(0) & ((\a8|RAM[1][6]~q\))) # (!\a7|rf_a2reg\(0) & (\a8|RAM[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[0][6]~q\,
	datab => \a8|RAM[1][6]~q\,
	datac => \a7|rf_a2reg\(1),
	datad => \a7|rf_a2reg\(0),
	combout => \a11|B_outreg~58_combout\);

-- Location: LCCOMB_X30_Y20_N2
\a11|B_outreg~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~59_combout\ = (\a7|rf_a2reg\(1) & ((\a11|B_outreg~58_combout\ & (\a8|RAM[3][6]~q\)) # (!\a11|B_outreg~58_combout\ & ((\a8|RAM[2][6]~q\))))) # (!\a7|rf_a2reg\(1) & (((\a11|B_outreg~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[3][6]~q\,
	datab => \a8|RAM[2][6]~q\,
	datac => \a7|rf_a2reg\(1),
	datad => \a11|B_outreg~58_combout\,
	combout => \a11|B_outreg~59_combout\);

-- Location: LCCOMB_X34_Y20_N22
\a11|B_outreg~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~60_combout\ = (\a11|B_outreg[10]~10_combout\ & (((\a11|B_outreg~59_combout\) # (\a11|B_outreg[10]~7_combout\)))) # (!\a11|B_outreg[10]~10_combout\ & (\a22|i5_W2_outreg\(6) & ((!\a11|B_outreg[10]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a22|i5_W2_outreg\(6),
	datab => \a11|B_outreg[10]~10_combout\,
	datac => \a11|B_outreg~59_combout\,
	datad => \a11|B_outreg[10]~7_combout\,
	combout => \a11|B_outreg~60_combout\);

-- Location: LCCOMB_X34_Y20_N0
\a11|B_outreg~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~63_combout\ = (\a11|B_outreg[10]~7_combout\ & ((\a11|B_outreg~60_combout\ & (\a11|B_outreg~62_combout\)) # (!\a11|B_outreg~60_combout\ & ((\a21|mem2_d1_out[6]~6_combout\))))) # (!\a11|B_outreg[10]~7_combout\ & 
-- (((\a11|B_outreg~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~62_combout\,
	datab => \a11|B_outreg[10]~7_combout\,
	datac => \a11|B_outreg~60_combout\,
	datad => \a21|mem2_d1_out[6]~6_combout\,
	combout => \a11|B_outreg~63_combout\);

-- Location: LCCOMB_X34_Y20_N18
\a11|B_outreg~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~64_combout\ = (\a20|W_outreg\(6) & ((\a11|B_outreg~135_combout\) # ((\a11|B_outreg~134_combout\ & \a11|B_outreg~63_combout\)))) # (!\a20|W_outreg\(6) & (((\a11|B_outreg~134_combout\ & \a11|B_outreg~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a20|W_outreg\(6),
	datab => \a11|B_outreg~135_combout\,
	datac => \a11|B_outreg~134_combout\,
	datad => \a11|B_outreg~63_combout\,
	combout => \a11|B_outreg~64_combout\);

-- Location: LCCOMB_X34_Y20_N6
\a11|B_outreg~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~65_combout\ = (\a11|B_outreg~64_combout\) # ((\a19|P0~2_combout\ & \a12|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a19|P0~2_combout\,
	datac => \a12|Add0~12_combout\,
	datad => \a11|B_outreg~64_combout\,
	combout => \a11|B_outreg~65_combout\);

-- Location: FF_X34_Y20_N7
\a11|B_outreg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|B_outreg~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|B_outreg\(6));

-- Location: LCCOMB_X35_Y20_N4
\a20|W_outreg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \a20|W_outreg~6_combout\ = (\a11|MEM_cont_outreg\(1) & (\a11|B_outreg\(6))) # (!\a11|MEM_cont_outreg\(1) & ((\a12|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a11|B_outreg\(6),
	datac => \a12|Add0~12_combout\,
	datad => \a11|MEM_cont_outreg\(1),
	combout => \a20|W_outreg~6_combout\);

-- Location: FF_X35_Y20_N5
\a20|W_outreg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a20|W_outreg~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a20|W_outreg\(6));

-- Location: LCCOMB_X32_Y21_N28
\a22|i5_W2_outreg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \a22|i5_W2_outreg[3]~3_combout\ = (\a21|mem2~44\ & (\a21|mem2_rtl_0_bypass\(19))) # (!\a21|mem2~44\ & ((\a21|mem2_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a21|mem2_rtl_0_bypass\(19),
	datab => \a21|mem2~44\,
	datad => \a21|mem2_rtl_0|auto_generated|ram_block1a3\,
	combout => \a22|i5_W2_outreg[3]~3_combout\);

-- Location: FF_X32_Y21_N29
\a22|i5_W2_outreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a22|i5_W2_outreg[3]~3_combout\,
	asdata => \a20|W_outreg\(3),
	sload => \a20|ALT_INV_MEM_contreg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a22|i5_W2_outreg\(3));

-- Location: LCCOMB_X31_Y21_N8
\a8|RAM[2][3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \a8|RAM[2][3]~6_combout\ = !\a22|i5_W2_outreg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a22|i5_W2_outreg\(3),
	combout => \a8|RAM[2][3]~6_combout\);

-- Location: FF_X31_Y21_N9
\a8|RAM[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|RAM[2][3]~6_combout\,
	ena => \a8|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[2][3]~q\);

-- Location: FF_X30_Y20_N27
\a8|RAM[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(3),
	sload => VCC,
	ena => \a8|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[1][3]~q\);

-- Location: FF_X30_Y20_N25
\a8|RAM[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(3),
	sload => VCC,
	ena => \a8|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[0][3]~q\);

-- Location: LCCOMB_X30_Y20_N24
\a11|B_outreg~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~34_combout\ = (\a7|rf_a2reg\(1) & (((\a7|rf_a2reg\(0))))) # (!\a7|rf_a2reg\(1) & ((\a7|rf_a2reg\(0) & (\a8|RAM[1][3]~q\)) # (!\a7|rf_a2reg\(0) & ((\a8|RAM[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[1][3]~q\,
	datab => \a7|rf_a2reg\(1),
	datac => \a8|RAM[0][3]~q\,
	datad => \a7|rf_a2reg\(0),
	combout => \a11|B_outreg~34_combout\);

-- Location: LCCOMB_X31_Y21_N10
\a8|RAM[3][3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \a8|RAM[3][3]~7_combout\ = !\a22|i5_W2_outreg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a22|i5_W2_outreg\(3),
	combout => \a8|RAM[3][3]~7_combout\);

-- Location: FF_X31_Y21_N11
\a8|RAM[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|RAM[3][3]~7_combout\,
	ena => \a8|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[3][3]~q\);

-- Location: LCCOMB_X31_Y21_N4
\a11|B_outreg~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~35_combout\ = (\a7|rf_a2reg\(1) & ((\a11|B_outreg~34_combout\ & ((!\a8|RAM[3][3]~q\))) # (!\a11|B_outreg~34_combout\ & (!\a8|RAM[2][3]~q\)))) # (!\a7|rf_a2reg\(1) & (((\a11|B_outreg~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(1),
	datab => \a8|RAM[2][3]~q\,
	datac => \a11|B_outreg~34_combout\,
	datad => \a8|RAM[3][3]~q\,
	combout => \a11|B_outreg~35_combout\);

-- Location: FF_X32_Y17_N3
\a8|RAM[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(3),
	sload => VCC,
	ena => \a8|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[6][3]~q\);

-- Location: FF_X32_Y17_N9
\a8|RAM[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(3),
	sload => VCC,
	ena => \a8|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[4][3]~q\);

-- Location: LCCOMB_X32_Y17_N8
\a11|B_outreg~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~37_combout\ = (\a7|rf_a2reg\(1) & ((\a8|RAM[6][3]~q\) # ((\a7|rf_a2reg\(0))))) # (!\a7|rf_a2reg\(1) & (((\a8|RAM[4][3]~q\ & !\a7|rf_a2reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(1),
	datab => \a8|RAM[6][3]~q\,
	datac => \a8|RAM[4][3]~q\,
	datad => \a7|rf_a2reg\(0),
	combout => \a11|B_outreg~37_combout\);

-- Location: FF_X31_Y17_N1
\a8|RAM[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(3),
	sload => VCC,
	ena => \a8|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[5][3]~q\);

-- Location: FF_X31_Y17_N3
\a8|RAM[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(3),
	sload => VCC,
	ena => \a8|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[7][3]~q\);

-- Location: LCCOMB_X31_Y17_N2
\a11|B_outreg~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~38_combout\ = (\a11|B_outreg~37_combout\ & (((\a8|RAM[7][3]~q\) # (!\a7|rf_a2reg\(0))))) # (!\a11|B_outreg~37_combout\ & (\a8|RAM[5][3]~q\ & ((\a7|rf_a2reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~37_combout\,
	datab => \a8|RAM[5][3]~q\,
	datac => \a8|RAM[7][3]~q\,
	datad => \a7|rf_a2reg\(0),
	combout => \a11|B_outreg~38_combout\);

-- Location: LCCOMB_X32_Y21_N24
\a21|mem2_d1_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_d1_out[3]~3_combout\ = (\a20|MEM_contreg\(0) & \a22|i5_W2_outreg[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a20|MEM_contreg\(0),
	datad => \a22|i5_W2_outreg[3]~3_combout\,
	combout => \a21|mem2_d1_out[3]~3_combout\);

-- Location: LCCOMB_X32_Y21_N18
\a11|B_outreg~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~36_combout\ = (\a11|B_outreg[10]~10_combout\ & (((\a11|B_outreg[10]~7_combout\)))) # (!\a11|B_outreg[10]~10_combout\ & ((\a11|B_outreg[10]~7_combout\ & ((\a21|mem2_d1_out[3]~3_combout\))) # (!\a11|B_outreg[10]~7_combout\ & 
-- (\a22|i5_W2_outreg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg[10]~10_combout\,
	datab => \a22|i5_W2_outreg\(3),
	datac => \a11|B_outreg[10]~7_combout\,
	datad => \a21|mem2_d1_out[3]~3_combout\,
	combout => \a11|B_outreg~36_combout\);

-- Location: LCCOMB_X32_Y21_N16
\a11|B_outreg~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~39_combout\ = (\a11|B_outreg[10]~10_combout\ & ((\a11|B_outreg~36_combout\ & ((\a11|B_outreg~38_combout\))) # (!\a11|B_outreg~36_combout\ & (\a11|B_outreg~35_combout\)))) # (!\a11|B_outreg[10]~10_combout\ & (((\a11|B_outreg~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg[10]~10_combout\,
	datab => \a11|B_outreg~35_combout\,
	datac => \a11|B_outreg~38_combout\,
	datad => \a11|B_outreg~36_combout\,
	combout => \a11|B_outreg~39_combout\);

-- Location: LCCOMB_X32_Y21_N6
\a11|B_outreg~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~40_combout\ = (\a20|W_outreg\(3) & ((\a11|B_outreg~135_combout\) # ((\a11|B_outreg~134_combout\ & \a11|B_outreg~39_combout\)))) # (!\a20|W_outreg\(3) & (((\a11|B_outreg~134_combout\ & \a11|B_outreg~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a20|W_outreg\(3),
	datab => \a11|B_outreg~135_combout\,
	datac => \a11|B_outreg~134_combout\,
	datad => \a11|B_outreg~39_combout\,
	combout => \a11|B_outreg~40_combout\);

-- Location: LCCOMB_X32_Y21_N22
\a11|B_outreg~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~41_combout\ = (\a11|B_outreg~40_combout\) # ((\a19|P0~2_combout\ & \a12|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a19|P0~2_combout\,
	datac => \a12|Add0~6_combout\,
	datad => \a11|B_outreg~40_combout\,
	combout => \a11|B_outreg~41_combout\);

-- Location: FF_X32_Y21_N23
\a11|B_outreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|B_outreg~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|B_outreg\(3));

-- Location: LCCOMB_X35_Y20_N0
\a20|W_outreg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \a20|W_outreg~3_combout\ = (\a11|MEM_cont_outreg\(1) & ((\a11|B_outreg\(3)))) # (!\a11|MEM_cont_outreg\(1) & (\a12|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|MEM_cont_outreg\(1),
	datab => \a12|Add0~6_combout\,
	datad => \a11|B_outreg\(3),
	combout => \a20|W_outreg~3_combout\);

-- Location: FF_X35_Y20_N1
\a20|W_outreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a20|W_outreg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a20|W_outreg\(3));

-- Location: LCCOMB_X35_Y21_N20
\a21|mem2_d1_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_d1_out[1]~1_combout\ = (\a20|MEM_contreg\(0) & ((\a21|mem2~combout\ & (\a21|mem2_rtl_0_bypass\(15))) # (!\a21|mem2~combout\ & ((\a21|mem2_rtl_0|auto_generated|ram_block1a1\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a21|mem2~combout\,
	datab => \a20|MEM_contreg\(0),
	datac => \a21|mem2_rtl_0_bypass\(15),
	datad => \a21|mem2_rtl_0|auto_generated|ram_block1a1\,
	combout => \a21|mem2_d1_out[1]~1_combout\);

-- Location: LCCOMB_X35_Y21_N2
\a11|B_outreg~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~20_combout\ = (\a11|B_outreg[10]~10_combout\ & (((\a11|B_outreg[10]~7_combout\)))) # (!\a11|B_outreg[10]~10_combout\ & ((\a11|B_outreg[10]~7_combout\ & ((\a21|mem2_d1_out[1]~1_combout\))) # (!\a11|B_outreg[10]~7_combout\ & 
-- (\a22|i5_W2_outreg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg[10]~10_combout\,
	datab => \a22|i5_W2_outreg\(1),
	datac => \a11|B_outreg[10]~7_combout\,
	datad => \a21|mem2_d1_out[1]~1_combout\,
	combout => \a11|B_outreg~20_combout\);

-- Location: LCCOMB_X35_Y21_N16
\a11|B_outreg~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~23_combout\ = (\a11|B_outreg[10]~10_combout\ & ((\a11|B_outreg~20_combout\ & (\a11|B_outreg~22_combout\)) # (!\a11|B_outreg~20_combout\ & ((\a11|B_outreg~19_combout\))))) # (!\a11|B_outreg[10]~10_combout\ & (((\a11|B_outreg~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg[10]~10_combout\,
	datab => \a11|B_outreg~22_combout\,
	datac => \a11|B_outreg~19_combout\,
	datad => \a11|B_outreg~20_combout\,
	combout => \a11|B_outreg~23_combout\);

-- Location: LCCOMB_X35_Y21_N6
\a11|B_outreg~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~24_combout\ = (\a11|B_outreg~134_combout\ & ((\a11|B_outreg~23_combout\) # ((\a11|B_outreg~135_combout\ & \a20|W_outreg\(1))))) # (!\a11|B_outreg~134_combout\ & (\a11|B_outreg~135_combout\ & (\a20|W_outreg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~134_combout\,
	datab => \a11|B_outreg~135_combout\,
	datac => \a20|W_outreg\(1),
	datad => \a11|B_outreg~23_combout\,
	combout => \a11|B_outreg~24_combout\);

-- Location: LCCOMB_X35_Y21_N24
\a11|B_outreg~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~25_combout\ = (\a11|B_outreg~24_combout\) # ((\a12|Add0~2_combout\ & \a19|P0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a12|Add0~2_combout\,
	datac => \a19|P0~2_combout\,
	datad => \a11|B_outreg~24_combout\,
	combout => \a11|B_outreg~25_combout\);

-- Location: FF_X35_Y21_N25
\a11|B_outreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|B_outreg~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|B_outreg\(1));

-- Location: LCCOMB_X35_Y21_N26
\a20|W_outreg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a20|W_outreg~1_combout\ = (\a11|MEM_cont_outreg\(1) & (\a11|B_outreg\(1))) # (!\a11|MEM_cont_outreg\(1) & ((\a12|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|MEM_cont_outreg\(1),
	datab => \a11|B_outreg\(1),
	datad => \a12|Add0~2_combout\,
	combout => \a20|W_outreg~1_combout\);

-- Location: FF_X35_Y21_N27
\a20|W_outreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a20|W_outreg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a20|W_outreg\(1));

-- Location: LCCOMB_X34_Y17_N16
\a22|i5_W2_outreg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \a22|i5_W2_outreg[5]~5_combout\ = (\a21|mem2~46\ & (\a21|mem2_rtl_0_bypass\(23))) # (!\a21|mem2~46\ & ((\a21|mem2_rtl_0|auto_generated|ram_block1a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a21|mem2_rtl_0_bypass\(23),
	datab => \a21|mem2~46\,
	datad => \a21|mem2_rtl_0|auto_generated|ram_block1a5\,
	combout => \a22|i5_W2_outreg[5]~5_combout\);

-- Location: FF_X34_Y17_N17
\a22|i5_W2_outreg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a22|i5_W2_outreg[5]~5_combout\,
	asdata => \a20|W_outreg\(5),
	sload => \a20|ALT_INV_MEM_contreg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a22|i5_W2_outreg\(5));

-- Location: FF_X31_Y17_N25
\a8|RAM[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(5),
	sload => VCC,
	ena => \a8|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[5][5]~q\);

-- Location: LCCOMB_X32_Y17_N24
\a11|B_outreg~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~53_combout\ = (\a7|rf_a2reg\(1) & ((\a8|RAM[6][5]~q\) # ((\a7|rf_a2reg\(0))))) # (!\a7|rf_a2reg\(1) & (((\a8|RAM[4][5]~q\ & !\a7|rf_a2reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(1),
	datab => \a8|RAM[6][5]~q\,
	datac => \a8|RAM[4][5]~q\,
	datad => \a7|rf_a2reg\(0),
	combout => \a11|B_outreg~53_combout\);

-- Location: LCCOMB_X31_Y17_N14
\a11|B_outreg~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~54_combout\ = (\a7|rf_a2reg\(0) & ((\a11|B_outreg~53_combout\ & ((\a8|RAM[7][5]~q\))) # (!\a11|B_outreg~53_combout\ & (\a8|RAM[5][5]~q\)))) # (!\a7|rf_a2reg\(0) & (((\a11|B_outreg~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(0),
	datab => \a8|RAM[5][5]~q\,
	datac => \a8|RAM[7][5]~q\,
	datad => \a11|B_outreg~53_combout\,
	combout => \a11|B_outreg~54_combout\);

-- Location: LCCOMB_X30_Y20_N12
\a11|B_outreg~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~50_combout\ = (\a7|rf_a2reg\(1) & (\a7|rf_a2reg\(0))) # (!\a7|rf_a2reg\(1) & ((\a7|rf_a2reg\(0) & ((\a8|RAM[1][5]~q\))) # (!\a7|rf_a2reg\(0) & (\a8|RAM[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(1),
	datab => \a7|rf_a2reg\(0),
	datac => \a8|RAM[0][5]~q\,
	datad => \a8|RAM[1][5]~q\,
	combout => \a11|B_outreg~50_combout\);

-- Location: LCCOMB_X31_Y20_N10
\a11|B_outreg~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~51_combout\ = (\a7|rf_a2reg\(1) & ((\a11|B_outreg~50_combout\ & (\a8|RAM[3][5]~q\)) # (!\a11|B_outreg~50_combout\ & ((\a8|RAM[2][5]~q\))))) # (!\a7|rf_a2reg\(1) & (((\a11|B_outreg~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(1),
	datab => \a8|RAM[3][5]~q\,
	datac => \a8|RAM[2][5]~q\,
	datad => \a11|B_outreg~50_combout\,
	combout => \a11|B_outreg~51_combout\);

-- Location: LCCOMB_X34_Y17_N6
\a11|B_outreg~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~52_combout\ = (\a11|B_outreg[10]~10_combout\ & (((\a11|B_outreg[10]~7_combout\)))) # (!\a11|B_outreg[10]~10_combout\ & ((\a11|B_outreg[10]~7_combout\ & ((\a21|mem2_d1_out[5]~5_combout\))) # (!\a11|B_outreg[10]~7_combout\ & 
-- (\a22|i5_W2_outreg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a22|i5_W2_outreg\(5),
	datab => \a11|B_outreg[10]~10_combout\,
	datac => \a11|B_outreg[10]~7_combout\,
	datad => \a21|mem2_d1_out[5]~5_combout\,
	combout => \a11|B_outreg~52_combout\);

-- Location: LCCOMB_X34_Y17_N24
\a11|B_outreg~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~55_combout\ = (\a11|B_outreg[10]~10_combout\ & ((\a11|B_outreg~52_combout\ & (\a11|B_outreg~54_combout\)) # (!\a11|B_outreg~52_combout\ & ((\a11|B_outreg~51_combout\))))) # (!\a11|B_outreg[10]~10_combout\ & (((\a11|B_outreg~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~54_combout\,
	datab => \a11|B_outreg~51_combout\,
	datac => \a11|B_outreg[10]~10_combout\,
	datad => \a11|B_outreg~52_combout\,
	combout => \a11|B_outreg~55_combout\);

-- Location: LCCOMB_X34_Y17_N10
\a11|B_outreg~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~56_combout\ = (\a20|W_outreg\(5) & ((\a11|B_outreg~135_combout\) # ((\a11|B_outreg~134_combout\ & \a11|B_outreg~55_combout\)))) # (!\a20|W_outreg\(5) & (\a11|B_outreg~134_combout\ & ((\a11|B_outreg~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a20|W_outreg\(5),
	datab => \a11|B_outreg~134_combout\,
	datac => \a11|B_outreg~135_combout\,
	datad => \a11|B_outreg~55_combout\,
	combout => \a11|B_outreg~56_combout\);

-- Location: LCCOMB_X34_Y17_N20
\a11|B_outreg~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~57_combout\ = (\a11|B_outreg~56_combout\) # ((\a19|P0~2_combout\ & \a12|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a19|P0~2_combout\,
	datac => \a12|Add0~10_combout\,
	datad => \a11|B_outreg~56_combout\,
	combout => \a11|B_outreg~57_combout\);

-- Location: FF_X34_Y17_N21
\a11|B_outreg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|B_outreg~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|B_outreg\(5));

-- Location: LCCOMB_X35_Y20_N14
\a12|alu2_b[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|alu2_b[5]~5_combout\ = (\a11|EX_cont_outreg\(7) & (\a11|B_outreg\(5))) # (!\a11|EX_cont_outreg\(7) & ((\a11|se16reg\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg\(5),
	datac => \a11|se16reg\(10),
	datad => \a11|EX_cont_outreg\(7),
	combout => \a12|alu2_b[5]~5_combout\);

-- Location: LCCOMB_X35_Y18_N22
\a21|mem2_rtl_0_bypass[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[12]~feeder_combout\ = \a12|Add0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a12|Add0~10_combout\,
	combout => \a21|mem2_rtl_0_bypass[12]~feeder_combout\);

-- Location: FF_X35_Y18_N23
\a21|mem2_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(12));

-- Location: FF_X35_Y18_N21
\a21|mem2_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a20|L_outreg\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(11));

-- Location: FF_X35_Y18_N1
\a21|mem2_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a12|Add0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(10));

-- Location: FF_X35_Y18_N19
\a21|mem2_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a20|L_outreg\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(9));

-- Location: LCCOMB_X35_Y18_N0
\a21|mem2~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2~25_combout\ = (\a21|mem2_rtl_0_bypass\(12) & (\a21|mem2_rtl_0_bypass\(11) & (\a21|mem2_rtl_0_bypass\(10) $ (!\a21|mem2_rtl_0_bypass\(9))))) # (!\a21|mem2_rtl_0_bypass\(12) & (!\a21|mem2_rtl_0_bypass\(11) & (\a21|mem2_rtl_0_bypass\(10) $ 
-- (!\a21|mem2_rtl_0_bypass\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a21|mem2_rtl_0_bypass\(12),
	datab => \a21|mem2_rtl_0_bypass\(11),
	datac => \a21|mem2_rtl_0_bypass\(10),
	datad => \a21|mem2_rtl_0_bypass\(9),
	combout => \a21|mem2~25_combout\);

-- Location: FF_X35_Y18_N17
\a21|mem2_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a21|process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(0));

-- Location: LCCOMB_X35_Y18_N10
\a21|mem2_rtl_0_bypass[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[3]~feeder_combout\ = \a20|L_outreg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a20|L_outreg\(1),
	combout => \a21|mem2_rtl_0_bypass[3]~feeder_combout\);

-- Location: FF_X35_Y18_N11
\a21|mem2_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(3));

-- Location: LCCOMB_X35_Y18_N8
\a21|mem2_rtl_0_bypass[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[1]~feeder_combout\ = \a20|L_outreg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a20|L_outreg\(0),
	combout => \a21|mem2_rtl_0_bypass[1]~feeder_combout\);

-- Location: FF_X35_Y18_N9
\a21|mem2_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(1));

-- Location: FF_X35_Y18_N25
\a21|mem2_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a12|Add0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(4));

-- Location: LCCOMB_X35_Y18_N2
\a21|mem2_rtl_0_bypass[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[2]~feeder_combout\ = \a12|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a12|Add0~0_combout\,
	combout => \a21|mem2_rtl_0_bypass[2]~feeder_combout\);

-- Location: FF_X35_Y18_N3
\a21|mem2_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(2));

-- Location: LCCOMB_X35_Y18_N24
\a21|mem2~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2~23_combout\ = (\a21|mem2_rtl_0_bypass\(3) & (\a21|mem2_rtl_0_bypass\(4) & (\a21|mem2_rtl_0_bypass\(1) $ (!\a21|mem2_rtl_0_bypass\(2))))) # (!\a21|mem2_rtl_0_bypass\(3) & (!\a21|mem2_rtl_0_bypass\(4) & (\a21|mem2_rtl_0_bypass\(1) $ 
-- (!\a21|mem2_rtl_0_bypass\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a21|mem2_rtl_0_bypass\(3),
	datab => \a21|mem2_rtl_0_bypass\(1),
	datac => \a21|mem2_rtl_0_bypass\(4),
	datad => \a21|mem2_rtl_0_bypass\(2),
	combout => \a21|mem2~23_combout\);

-- Location: LCCOMB_X35_Y18_N14
\a21|mem2~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2~27_combout\ = (\a21|mem2_rtl_0_bypass\(0) & \a21|mem2~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a21|mem2_rtl_0_bypass\(0),
	datad => \a21|mem2~23_combout\,
	combout => \a21|mem2~27_combout\);

-- Location: LCCOMB_X35_Y18_N4
\a21|mem2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2~combout\ = ((\a21|mem2~25_combout\ & (\a21|mem2~27_combout\ & \a21|mem2~24_combout\))) # (!\a21|mem2_rtl_0_bypass\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a21|mem2_rtl_0_bypass\(16),
	datab => \a21|mem2~25_combout\,
	datac => \a21|mem2~27_combout\,
	datad => \a21|mem2~24_combout\,
	combout => \a21|mem2~combout\);

-- Location: LCCOMB_X34_Y21_N12
\a22|i5_W2_outreg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a22|i5_W2_outreg[1]~1_combout\ = (\a21|mem2~combout\ & (\a21|mem2_rtl_0_bypass\(15))) # (!\a21|mem2~combout\ & ((\a21|mem2_rtl_0|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a21|mem2~combout\,
	datab => \a21|mem2_rtl_0_bypass\(15),
	datad => \a21|mem2_rtl_0|auto_generated|ram_block1a1\,
	combout => \a22|i5_W2_outreg[1]~1_combout\);

-- Location: FF_X34_Y21_N13
\a22|i5_W2_outreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a22|i5_W2_outreg[1]~1_combout\,
	asdata => \a20|W_outreg\(1),
	sload => \a20|ALT_INV_MEM_contreg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a22|i5_W2_outreg\(1));

-- Location: FF_X31_Y17_N23
\a8|RAM[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(1),
	sload => VCC,
	ena => \a8|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[7][1]~q\);

-- Location: LCCOMB_X32_Y17_N14
\a11|A_outreg~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~20_combout\ = (\a7|rf_a1reg\(1) & (((\a8|RAM[6][1]~q\) # (\a7|rf_a1reg\(0))))) # (!\a7|rf_a1reg\(1) & (\a8|RAM[4][1]~q\ & ((!\a7|rf_a1reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[4][1]~q\,
	datab => \a7|rf_a1reg\(1),
	datac => \a8|RAM[6][1]~q\,
	datad => \a7|rf_a1reg\(0),
	combout => \a11|A_outreg~20_combout\);

-- Location: LCCOMB_X31_Y17_N16
\a11|A_outreg~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~21_combout\ = (\a7|rf_a1reg\(0) & ((\a11|A_outreg~20_combout\ & (\a8|RAM[7][1]~q\)) # (!\a11|A_outreg~20_combout\ & ((\a8|RAM[5][1]~q\))))) # (!\a7|rf_a1reg\(0) & (((\a11|A_outreg~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[7][1]~q\,
	datab => \a7|rf_a1reg\(0),
	datac => \a8|RAM[5][1]~q\,
	datad => \a11|A_outreg~20_combout\,
	combout => \a11|A_outreg~21_combout\);

-- Location: LCCOMB_X30_Y18_N22
\a11|A_outreg~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~17_combout\ = (\a7|rf_a1reg\(1) & (((\a7|rf_a1reg\(0))))) # (!\a7|rf_a1reg\(1) & ((\a7|rf_a1reg\(0) & ((!\a8|RAM[1][1]~q\))) # (!\a7|rf_a1reg\(0) & (\a8|RAM[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[0][1]~q\,
	datab => \a7|rf_a1reg\(1),
	datac => \a7|rf_a1reg\(0),
	datad => \a8|RAM[1][1]~q\,
	combout => \a11|A_outreg~17_combout\);

-- Location: LCCOMB_X31_Y21_N26
\a11|A_outreg~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~18_combout\ = (\a7|rf_a1reg\(1) & ((\a11|A_outreg~17_combout\ & (!\a8|RAM[3][1]~q\)) # (!\a11|A_outreg~17_combout\ & ((\a8|RAM[2][1]~q\))))) # (!\a7|rf_a1reg\(1) & (((\a11|A_outreg~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a1reg\(1),
	datab => \a8|RAM[3][1]~q\,
	datac => \a11|A_outreg~17_combout\,
	datad => \a8|RAM[2][1]~q\,
	combout => \a11|A_outreg~18_combout\);

-- Location: LCCOMB_X35_Y21_N8
\a11|A_outreg~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~19_combout\ = (\a11|A_outreg[7]~12_combout\ & (((\a11|A_outreg[7]~11_combout\)))) # (!\a11|A_outreg[7]~12_combout\ & ((\a11|A_outreg[7]~11_combout\ & ((\a11|A_outreg~18_combout\))) # (!\a11|A_outreg[7]~11_combout\ & 
-- (\a22|i5_W2_outreg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a22|i5_W2_outreg\(1),
	datab => \a11|A_outreg~18_combout\,
	datac => \a11|A_outreg[7]~12_combout\,
	datad => \a11|A_outreg[7]~11_combout\,
	combout => \a11|A_outreg~19_combout\);

-- Location: LCCOMB_X35_Y21_N30
\a11|A_outreg~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~22_combout\ = (\a11|A_outreg[7]~12_combout\ & ((\a11|A_outreg~19_combout\ & (\a11|A_outreg~21_combout\)) # (!\a11|A_outreg~19_combout\ & ((\a21|mem2_d1_out[1]~1_combout\))))) # (!\a11|A_outreg[7]~12_combout\ & 
-- (((\a11|A_outreg~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg~21_combout\,
	datab => \a11|A_outreg[7]~12_combout\,
	datac => \a11|A_outreg~19_combout\,
	datad => \a21|mem2_d1_out[1]~1_combout\,
	combout => \a11|A_outreg~22_combout\);

-- Location: LCCOMB_X35_Y20_N2
\a11|A_outreg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg[1]~1_combout\ = (\a19|N2~0_combout\ & ((\a20|W_outreg\(1)))) # (!\a19|N2~0_combout\ & (\a11|A_outreg~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg~22_combout\,
	datab => \a19|N2~0_combout\,
	datad => \a20|W_outreg\(1),
	combout => \a11|A_outreg[1]~1_combout\);

-- Location: FF_X35_Y20_N3
\a11|A_outreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|A_outreg[1]~1_combout\,
	asdata => \a12|Add0~2_combout\,
	sload => \a19|N0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|A_outreg\(1));

-- Location: FF_X36_Y20_N3
\a1|pc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a12|Add0~2_combout\,
	clrn => \nreset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a1|pc\(1));

-- Location: LCCOMB_X37_Y21_N26
\a0|mem~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \a0|mem~6_combout\ = (!\a1|pc\(4) & (\a1|pc\(2) & (!\a1|pc\(3) & !\a1|pc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|pc\(4),
	datab => \a1|pc\(2),
	datac => \a1|pc\(3),
	datad => \a1|pc\(1),
	combout => \a0|mem~6_combout\);

-- Location: LCCOMB_X37_Y21_N16
\a0|mem~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \a0|mem~7_combout\ = (\a1|pc\(0) & \a0|mem~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|pc\(0),
	datac => \a0|mem~6_combout\,
	combout => \a0|mem~7_combout\);

-- Location: FF_X37_Y21_N17
\a3|inter1reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a0|mem~7_combout\,
	ena => \a3|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|inter1reg\(25));

-- Location: LCCOMB_X36_Y21_N2
\a7|rf_a1reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a7|rf_a1reg~2_combout\ = (\a3|inter1reg\(30) & ((\a3|inter1reg\(26)))) # (!\a3|inter1reg\(30) & (\a3|inter1reg\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a3|inter1reg\(25),
	datac => \a3|inter1reg\(26),
	datad => \a3|inter1reg\(30),
	combout => \a7|rf_a1reg~2_combout\);

-- Location: FF_X36_Y17_N1
\a7|rf_a1reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a7|rf_a1reg~2_combout\,
	sload => VCC,
	ena => \a18|stall_cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|rf_a1reg\(2));

-- Location: LCCOMB_X36_Y17_N4
\a19|N0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a19|N0~2_combout\ = (\a7|rf_a1reg\(0) & (\a11|i3_d_outreg\(0) & (\a11|i3_d_outreg\(1) $ (!\a7|rf_a1reg\(1))))) # (!\a7|rf_a1reg\(0) & (!\a11|i3_d_outreg\(0) & (\a11|i3_d_outreg\(1) $ (!\a7|rf_a1reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a1reg\(0),
	datab => \a11|i3_d_outreg\(0),
	datac => \a11|i3_d_outreg\(1),
	datad => \a7|rf_a1reg\(1),
	combout => \a19|N0~2_combout\);

-- Location: LCCOMB_X36_Y17_N6
\a19|N0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \a19|N0~3_combout\ = (\a19|N0~2_combout\ & (\a7|rf_a1reg\(2) $ (!\a11|i3_d_outreg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a1reg\(2),
	datab => \a11|i3_d_outreg\(2),
	datad => \a19|N0~2_combout\,
	combout => \a19|N0~3_combout\);

-- Location: LCCOMB_X35_Y17_N0
\a19|N0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \a19|N0~4_combout\ = (\a11|WB_cont_outreg~q\ & (!\a11|MEM_cont_outreg\(0) & (\a19|N0~3_combout\ & \a11|valid_outreg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|WB_cont_outreg~q\,
	datab => \a11|MEM_cont_outreg\(0),
	datac => \a19|N0~3_combout\,
	datad => \a11|valid_outreg~q\,
	combout => \a19|N0~4_combout\);

-- Location: LCCOMB_X29_Y19_N18
\a11|A_outreg~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~109_combout\ = (\a7|rf_a1reg\(0) & ((\a8|RAM[1][14]~q\) # ((\a7|rf_a1reg\(1))))) # (!\a7|rf_a1reg\(0) & (((\a8|RAM[0][14]~q\ & !\a7|rf_a1reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[1][14]~q\,
	datab => \a7|rf_a1reg\(0),
	datac => \a8|RAM[0][14]~q\,
	datad => \a7|rf_a1reg\(1),
	combout => \a11|A_outreg~109_combout\);

-- Location: LCCOMB_X30_Y19_N28
\a11|A_outreg~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~110_combout\ = (\a11|A_outreg~109_combout\ & ((\a8|RAM[3][14]~q\) # ((!\a7|rf_a1reg\(1))))) # (!\a11|A_outreg~109_combout\ & (((\a8|RAM[2][14]~q\ & \a7|rf_a1reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[3][14]~q\,
	datab => \a11|A_outreg~109_combout\,
	datac => \a8|RAM[2][14]~q\,
	datad => \a7|rf_a1reg\(1),
	combout => \a11|A_outreg~110_combout\);

-- Location: LCCOMB_X32_Y17_N0
\a11|A_outreg~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~112_combout\ = (\a7|rf_a1reg\(0) & (((\a7|rf_a1reg\(1))))) # (!\a7|rf_a1reg\(0) & ((\a7|rf_a1reg\(1) & ((\a8|RAM[6][14]~q\))) # (!\a7|rf_a1reg\(1) & (\a8|RAM[4][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[4][14]~q\,
	datab => \a7|rf_a1reg\(0),
	datac => \a8|RAM[6][14]~q\,
	datad => \a7|rf_a1reg\(1),
	combout => \a11|A_outreg~112_combout\);

-- Location: LCCOMB_X31_Y18_N28
\a11|A_outreg~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~113_combout\ = (\a7|rf_a1reg\(0) & ((\a11|A_outreg~112_combout\ & (\a8|RAM[7][14]~q\)) # (!\a11|A_outreg~112_combout\ & ((\a8|RAM[5][14]~q\))))) # (!\a7|rf_a1reg\(0) & (((\a11|A_outreg~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a1reg\(0),
	datab => \a8|RAM[7][14]~q\,
	datac => \a8|RAM[5][14]~q\,
	datad => \a11|A_outreg~112_combout\,
	combout => \a11|A_outreg~113_combout\);

-- Location: LCCOMB_X38_Y19_N6
\a11|A_outreg~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~111_combout\ = (\a11|A_outreg[7]~11_combout\ & (((\a11|A_outreg[7]~12_combout\)))) # (!\a11|A_outreg[7]~11_combout\ & ((\a11|A_outreg[7]~12_combout\ & ((\a21|mem2_d1_out[14]~14_combout\))) # (!\a11|A_outreg[7]~12_combout\ & 
-- (\a22|i5_W2_outreg\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg[7]~11_combout\,
	datab => \a22|i5_W2_outreg\(14),
	datac => \a11|A_outreg[7]~12_combout\,
	datad => \a21|mem2_d1_out[14]~14_combout\,
	combout => \a11|A_outreg~111_combout\);

-- Location: LCCOMB_X38_Y19_N28
\a11|A_outreg~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~114_combout\ = (\a11|A_outreg[7]~11_combout\ & ((\a11|A_outreg~111_combout\ & ((\a11|A_outreg~113_combout\))) # (!\a11|A_outreg~111_combout\ & (\a11|A_outreg~110_combout\)))) # (!\a11|A_outreg[7]~11_combout\ & 
-- (((\a11|A_outreg~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg[7]~11_combout\,
	datab => \a11|A_outreg~110_combout\,
	datac => \a11|A_outreg~113_combout\,
	datad => \a11|A_outreg~111_combout\,
	combout => \a11|A_outreg~114_combout\);

-- Location: LCCOMB_X38_Y19_N2
\a11|A_outreg~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~115_combout\ = (!\a19|N0~4_combout\ & ((\a19|N2~0_combout\ & (\a20|W_outreg\(14))) # (!\a19|N2~0_combout\ & ((\a11|A_outreg~114_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a19|N0~4_combout\,
	datab => \a20|W_outreg\(14),
	datac => \a19|N2~0_combout\,
	datad => \a11|A_outreg~114_combout\,
	combout => \a11|A_outreg~115_combout\);

-- Location: LCCOMB_X38_Y19_N24
\a11|A_outreg~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~116_combout\ = (\a11|A_outreg~115_combout\) # ((\a12|Add0~28_combout\ & \a19|N0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a12|Add0~28_combout\,
	datac => \a19|N0~4_combout\,
	datad => \a11|A_outreg~115_combout\,
	combout => \a11|A_outreg~116_combout\);

-- Location: FF_X38_Y19_N25
\a11|A_outreg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|A_outreg~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|A_outreg\(14));

-- Location: LCCOMB_X36_Y20_N8
\a12|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|Equal0~0_combout\ = (!\a12|Add0~0_combout\ & (!\a12|Add0~4_combout\ & (!\a12|Add0~6_combout\ & !\a12|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a12|Add0~0_combout\,
	datab => \a12|Add0~4_combout\,
	datac => \a12|Add0~6_combout\,
	datad => \a12|Add0~2_combout\,
	combout => \a12|Equal0~0_combout\);

-- Location: LCCOMB_X36_Y20_N10
\a12|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|Equal0~1_combout\ = (!\a12|Add0~10_combout\ & (!\a12|Add0~12_combout\ & (\a12|Equal0~0_combout\ & !\a12|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a12|Add0~10_combout\,
	datab => \a12|Add0~12_combout\,
	datac => \a12|Equal0~0_combout\,
	datad => \a12|Add0~8_combout\,
	combout => \a12|Equal0~1_combout\);

-- Location: LCCOMB_X36_Y19_N26
\a12|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|Equal0~2_combout\ = (!\a12|Add0~14_combout\ & (!\a12|Add0~16_combout\ & (!\a12|Add0~18_combout\ & \a12|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a12|Add0~14_combout\,
	datab => \a12|Add0~16_combout\,
	datac => \a12|Add0~18_combout\,
	datad => \a12|Equal0~1_combout\,
	combout => \a12|Equal0~2_combout\);

-- Location: LCCOMB_X36_Y19_N20
\a12|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|Equal0~3_combout\ = (!\a12|Add0~22_combout\ & (!\a12|Add0~24_combout\ & (!\a12|Add0~20_combout\ & \a12|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a12|Add0~22_combout\,
	datab => \a12|Add0~24_combout\,
	datac => \a12|Add0~20_combout\,
	datad => \a12|Equal0~2_combout\,
	combout => \a12|Equal0~3_combout\);

-- Location: LCCOMB_X36_Y19_N18
\a12|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|Equal0~4_combout\ = (!\a12|Add0~28_combout\ & (\a12|Equal0~3_combout\ & (!\a12|Add0~30_combout\ & !\a12|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a12|Add0~28_combout\,
	datab => \a12|Equal0~3_combout\,
	datac => \a12|Add0~30_combout\,
	datad => \a12|Add0~26_combout\,
	combout => \a12|Equal0~4_combout\);

-- Location: FF_X36_Y19_N19
\a12|zero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a12|Equal0~4_combout\,
	ena => \a11|EX_cont_outreg\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a12|zero~q\);

-- Location: FF_X36_Y20_N7
\a7|i2_opcode_outreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a3|inter1reg\(17),
	sload => VCC,
	ena => \a18|stall_cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|i2_opcode_outreg\(0));

-- Location: FF_X36_Y19_N31
\a11|i3_opcode_outreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a7|i2_opcode_outreg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|i3_opcode_outreg\(0));

-- Location: LCCOMB_X36_Y21_N22
\a7|i2_opcode_outreg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a7|i2_opcode_outreg[1]~feeder_combout\ = \a3|inter1reg\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a3|inter1reg\(18),
	combout => \a7|i2_opcode_outreg[1]~feeder_combout\);

-- Location: FF_X36_Y21_N23
\a7|i2_opcode_outreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a7|i2_opcode_outreg[1]~feeder_combout\,
	ena => \a18|stall_cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|i2_opcode_outreg\(1));

-- Location: FF_X36_Y19_N29
\a11|i3_opcode_outreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a7|i2_opcode_outreg\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|i3_opcode_outreg\(1));

-- Location: LCCOMB_X36_Y19_N16
\a12|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|Add0~32_combout\ = !\a12|Add0~31\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \a12|Add0~31\,
	combout => \a12|Add0~32_combout\);

-- Location: FF_X36_Y19_N17
\a12|carry\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a12|Add0~32_combout\,
	ena => \a11|EX_cont_outreg\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a12|carry~q\);

-- Location: LCCOMB_X36_Y19_N28
\a20|i4_validreg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a20|i4_validreg~0_combout\ = (\a11|i3_opcode_outreg\(0) & (!\a12|zero~q\ & (!\a11|i3_opcode_outreg\(1)))) # (!\a11|i3_opcode_outreg\(0) & (((\a11|i3_opcode_outreg\(1) & !\a12|carry~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a12|zero~q\,
	datab => \a11|i3_opcode_outreg\(0),
	datac => \a11|i3_opcode_outreg\(1),
	datad => \a12|carry~q\,
	combout => \a20|i4_validreg~0_combout\);

-- Location: LCCOMB_X37_Y20_N8
\a7|i2_opcode_outreg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a7|i2_opcode_outreg[2]~feeder_combout\ = \a3|inter1reg\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a3|inter1reg\(29),
	combout => \a7|i2_opcode_outreg[2]~feeder_combout\);

-- Location: FF_X37_Y20_N9
\a7|i2_opcode_outreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a7|i2_opcode_outreg[2]~feeder_combout\,
	ena => \a18|stall_cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|i2_opcode_outreg\(2));

-- Location: FF_X36_Y20_N29
\a11|i3_opcode_outreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a7|i2_opcode_outreg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|i3_opcode_outreg\(2));

-- Location: LCCOMB_X35_Y17_N12
\a20|i4_validreg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a20|i4_validreg~1_combout\ = (\a11|valid_outreg~q\ & (((\a11|i3_opcode_outreg\(2)) # (!\a20|i4_validreg~0_combout\)) # (!\a11|EX_cont_outreg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|EX_cont_outreg\(5),
	datab => \a11|valid_outreg~q\,
	datac => \a20|i4_validreg~0_combout\,
	datad => \a11|i3_opcode_outreg\(2),
	combout => \a20|i4_validreg~1_combout\);

-- Location: FF_X35_Y17_N13
\a20|i4_validreg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a20|i4_validreg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a20|i4_validreg~q\);

-- Location: LCCOMB_X36_Y17_N12
\a19|P3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a19|P3~1_combout\ = (\a20|WB_contreg~q\ & \a20|i4_validreg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a20|WB_contreg~q\,
	datad => \a20|i4_validreg~q\,
	combout => \a19|P3~1_combout\);

-- Location: LCCOMB_X36_Y17_N14
\a19|P3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a19|P3~0_combout\ = (\a7|rf_a2reg\(1) & (\a20|dest_outreg\(1) & (\a20|dest_outreg\(0) $ (!\a7|rf_a2reg\(0))))) # (!\a7|rf_a2reg\(1) & (!\a20|dest_outreg\(1) & (\a20|dest_outreg\(0) $ (!\a7|rf_a2reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(1),
	datab => \a20|dest_outreg\(0),
	datac => \a20|dest_outreg\(1),
	datad => \a7|rf_a2reg\(0),
	combout => \a19|P3~0_combout\);

-- Location: LCCOMB_X36_Y17_N10
\a19|P3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a19|P3~2_combout\ = (\a19|P3~1_combout\ & (\a19|P3~0_combout\ & (\a7|rf_a2reg\(2) $ (!\a20|dest_outreg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a19|P3~1_combout\,
	datab => \a7|rf_a2reg\(2),
	datac => \a20|dest_outreg\(2),
	datad => \a19|P3~0_combout\,
	combout => \a19|P3~2_combout\);

-- Location: LCCOMB_X34_Y17_N22
\a11|B_outreg~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~135_combout\ = (\a19|P3~2_combout\ & (!\a11|B_outreg~15_combout\ & ((!\a20|i4_validreg~q\) # (!\a20|MEM_contreg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a19|P3~2_combout\,
	datab => \a20|MEM_contreg\(0),
	datac => \a20|i4_validreg~q\,
	datad => \a11|B_outreg~15_combout\,
	combout => \a11|B_outreg~135_combout\);

-- Location: LCCOMB_X32_Y17_N6
\a11|B_outreg~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~29_combout\ = (\a7|rf_a2reg\(1) & ((\a8|RAM[6][2]~q\) # ((\a7|rf_a2reg\(0))))) # (!\a7|rf_a2reg\(1) & (((\a8|RAM[4][2]~q\ & !\a7|rf_a2reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(1),
	datab => \a8|RAM[6][2]~q\,
	datac => \a8|RAM[4][2]~q\,
	datad => \a7|rf_a2reg\(0),
	combout => \a11|B_outreg~29_combout\);

-- Location: LCCOMB_X31_Y17_N10
\a11|B_outreg~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~30_combout\ = (\a7|rf_a2reg\(0) & ((\a11|B_outreg~29_combout\ & ((\a8|RAM[7][2]~q\))) # (!\a11|B_outreg~29_combout\ & (\a8|RAM[5][2]~q\)))) # (!\a7|rf_a2reg\(0) & (((\a11|B_outreg~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(0),
	datab => \a8|RAM[5][2]~q\,
	datac => \a8|RAM[7][2]~q\,
	datad => \a11|B_outreg~29_combout\,
	combout => \a11|B_outreg~30_combout\);

-- Location: LCCOMB_X30_Y20_N22
\a11|B_outreg~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~26_combout\ = (\a7|rf_a2reg\(1) & (((\a7|rf_a2reg\(0))))) # (!\a7|rf_a2reg\(1) & ((\a7|rf_a2reg\(0) & (\a8|RAM[1][2]~q\)) # (!\a7|rf_a2reg\(0) & ((\a8|RAM[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(1),
	datab => \a8|RAM[1][2]~q\,
	datac => \a8|RAM[0][2]~q\,
	datad => \a7|rf_a2reg\(0),
	combout => \a11|B_outreg~26_combout\);

-- Location: LCCOMB_X31_Y20_N30
\a11|B_outreg~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~27_combout\ = (\a7|rf_a2reg\(1) & ((\a11|B_outreg~26_combout\ & (!\a8|RAM[3][2]~q\)) # (!\a11|B_outreg~26_combout\ & ((\a8|RAM[2][2]~q\))))) # (!\a7|rf_a2reg\(1) & (((\a11|B_outreg~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(1),
	datab => \a8|RAM[3][2]~q\,
	datac => \a8|RAM[2][2]~q\,
	datad => \a11|B_outreg~26_combout\,
	combout => \a11|B_outreg~27_combout\);

-- Location: LCCOMB_X34_Y21_N16
\a11|B_outreg~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~28_combout\ = (\a11|B_outreg[10]~10_combout\ & (((\a11|B_outreg[10]~7_combout\) # (\a11|B_outreg~27_combout\)))) # (!\a11|B_outreg[10]~10_combout\ & (\a22|i5_W2_outreg\(2) & (!\a11|B_outreg[10]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a22|i5_W2_outreg\(2),
	datab => \a11|B_outreg[10]~10_combout\,
	datac => \a11|B_outreg[10]~7_combout\,
	datad => \a11|B_outreg~27_combout\,
	combout => \a11|B_outreg~28_combout\);

-- Location: LCCOMB_X34_Y21_N18
\a11|B_outreg~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~31_combout\ = (\a11|B_outreg~28_combout\ & ((\a11|B_outreg~30_combout\) # ((!\a11|B_outreg[10]~7_combout\)))) # (!\a11|B_outreg~28_combout\ & (((\a11|B_outreg[10]~7_combout\ & \a21|mem2_d1_out[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~30_combout\,
	datab => \a11|B_outreg~28_combout\,
	datac => \a11|B_outreg[10]~7_combout\,
	datad => \a21|mem2_d1_out[2]~2_combout\,
	combout => \a11|B_outreg~31_combout\);

-- Location: LCCOMB_X34_Y21_N24
\a11|B_outreg~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~32_combout\ = (\a11|B_outreg~135_combout\ & ((\a20|W_outreg\(2)) # ((\a11|B_outreg~134_combout\ & \a11|B_outreg~31_combout\)))) # (!\a11|B_outreg~135_combout\ & (((\a11|B_outreg~134_combout\ & \a11|B_outreg~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~135_combout\,
	datab => \a20|W_outreg\(2),
	datac => \a11|B_outreg~134_combout\,
	datad => \a11|B_outreg~31_combout\,
	combout => \a11|B_outreg~32_combout\);

-- Location: LCCOMB_X34_Y21_N8
\a11|B_outreg~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~33_combout\ = (\a11|B_outreg~32_combout\) # ((\a12|Add0~4_combout\ & \a19|P0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a12|Add0~4_combout\,
	datac => \a19|P0~2_combout\,
	datad => \a11|B_outreg~32_combout\,
	combout => \a11|B_outreg~33_combout\);

-- Location: FF_X34_Y21_N9
\a11|B_outreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|B_outreg~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|B_outreg\(2));

-- Location: LCCOMB_X36_Y20_N6
\a12|alu2_b[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a12|alu2_b[2]~2_combout\ = (\a11|EX_cont_outreg\(7) & ((\a11|B_outreg\(2)))) # (!\a11|EX_cont_outreg\(7) & (\a11|se16reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|EX_cont_outreg\(7),
	datab => \a11|se16reg\(2),
	datad => \a11|B_outreg\(2),
	combout => \a12|alu2_b[2]~2_combout\);

-- Location: FF_X36_Y20_N21
\a1|pc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a12|Add0~4_combout\,
	clrn => \nreset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a1|pc\(2));

-- Location: LCCOMB_X37_Y22_N30
\a0|mem~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a0|mem~2_combout\ = (!\a1|pc\(3) & ((\a1|pc\(2) & (!\a1|pc\(1))) # (!\a1|pc\(2) & ((\a1|pc\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|pc\(2),
	datab => \a1|pc\(3),
	datac => \a1|pc\(1),
	datad => \a1|pc\(0),
	combout => \a0|mem~2_combout\);

-- Location: LCCOMB_X37_Y21_N4
\a3|inter1reg~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \a3|inter1reg~15_combout\ = (\a3|process_0~1_combout\ & (!\a1|pc\(4) & ((\a0|mem~2_combout\)))) # (!\a3|process_0~1_combout\ & (((\a3|inter1reg~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|pc\(4),
	datab => \a3|inter1reg~14_combout\,
	datac => \a0|mem~2_combout\,
	datad => \a3|process_0~1_combout\,
	combout => \a3|inter1reg~15_combout\);

-- Location: FF_X37_Y21_N5
\a3|inter1reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a3|inter1reg~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|inter1reg\(23));

-- Location: LCCOMB_X38_Y21_N28
\a7|dest_outreg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \a7|dest_outreg~3_combout\ = (!\a3|inter1reg\(22) & (!\a3|inter1reg\(21) & ((\a3|inter1reg\(24)) # (\a3|inter1reg\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|inter1reg\(24),
	datab => \a3|inter1reg\(22),
	datac => \a3|inter1reg\(23),
	datad => \a3|inter1reg\(21),
	combout => \a7|dest_outreg~3_combout\);

-- Location: LCCOMB_X36_Y21_N20
\a7|dest_outreg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \a7|dest_outreg~4_combout\ = (\a7|dest_outreg~2_combout\ & ((\a3|inter1reg\(19)) # ((\a3|inter1reg\(20)) # (\a7|dest_outreg~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|dest_outreg~2_combout\,
	datab => \a3|inter1reg\(19),
	datac => \a3|inter1reg\(20),
	datad => \a7|dest_outreg~3_combout\,
	combout => \a7|dest_outreg~4_combout\);

-- Location: FF_X36_Y21_N21
\a7|dest_outreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a7|dest_outreg~4_combout\,
	ena => \a18|stall_cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|dest_outreg\(1));

-- Location: FF_X36_Y17_N5
\a11|i3_d_outreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a7|dest_outreg\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|i3_d_outreg\(1));

-- Location: LCCOMB_X35_Y17_N28
\a16|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a16|process_0~1_combout\ = (((!\a16|process_0~0_combout\) # (!\a11|i3_d_outreg\(2))) # (!\a11|i3_d_outreg\(0))) # (!\a11|i3_d_outreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|i3_d_outreg\(1),
	datab => \a11|i3_d_outreg\(0),
	datac => \a11|i3_d_outreg\(2),
	datad => \a16|process_0~0_combout\,
	combout => \a16|process_0~1_combout\);

-- Location: FF_X35_Y17_N31
\a3|inter1reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a16|process_0~1_combout\,
	sload => VCC,
	ena => \a3|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|inter1reg\(0));

-- Location: LCCOMB_X35_Y17_N30
\a7|valid_outreg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a7|valid_outreg~0_combout\ = (\a16|process_0~1_combout\ & (\a3|inter1reg\(0) & \a18|stall_cont~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a16|process_0~1_combout\,
	datac => \a3|inter1reg\(0),
	datad => \a18|stall_cont~0_combout\,
	combout => \a7|valid_outreg~0_combout\);

-- Location: FF_X36_Y17_N13
\a7|valid_outreg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a7|valid_outreg~0_combout\,
	sload => VCC,
	ena => \a18|stall_cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|valid_outreg~q\);

-- Location: LCCOMB_X35_Y17_N16
\a11|valid_outreg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|valid_outreg~0_combout\ = (\a16|process_0~1_combout\ & (\a7|valid_outreg~q\ & \a18|stall_cont~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a16|process_0~1_combout\,
	datac => \a7|valid_outreg~q\,
	datad => \a18|stall_cont~0_combout\,
	combout => \a11|valid_outreg~0_combout\);

-- Location: FF_X35_Y17_N17
\a11|valid_outreg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|valid_outreg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|valid_outreg~q\);

-- Location: LCCOMB_X35_Y17_N2
\a16|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a16|process_0~0_combout\ = (\a11|WB_cont_outreg~q\ & \a11|valid_outreg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a11|WB_cont_outreg~q\,
	datad => \a11|valid_outreg~q\,
	combout => \a16|process_0~0_combout\);

-- Location: LCCOMB_X36_Y17_N8
\a19|P0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a19|P0~0_combout\ = (\a7|rf_a2reg\(1) & (\a11|i3_d_outreg\(1) & (\a11|i3_d_outreg\(0) $ (!\a7|rf_a2reg\(0))))) # (!\a7|rf_a2reg\(1) & (!\a11|i3_d_outreg\(1) & (\a11|i3_d_outreg\(0) $ (!\a7|rf_a2reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(1),
	datab => \a11|i3_d_outreg\(1),
	datac => \a11|i3_d_outreg\(0),
	datad => \a7|rf_a2reg\(0),
	combout => \a19|P0~0_combout\);

-- Location: LCCOMB_X36_Y17_N22
\a19|P0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a19|P0~1_combout\ = (\a19|P0~0_combout\ & (\a7|rf_a2reg\(2) $ (!\a11|i3_d_outreg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(2),
	datac => \a11|i3_d_outreg\(2),
	datad => \a19|P0~0_combout\,
	combout => \a19|P0~1_combout\);

-- Location: LCCOMB_X36_Y17_N18
\a18|stall_cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a18|stall_cont~0_combout\ = (((!\a19|P0~1_combout\ & !\a19|N0~3_combout\)) # (!\a11|MEM_cont_outreg\(0))) # (!\a16|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a16|process_0~0_combout\,
	datab => \a19|P0~1_combout\,
	datac => \a11|MEM_cont_outreg\(0),
	datad => \a19|N0~3_combout\,
	combout => \a18|stall_cont~0_combout\);

-- Location: LCCOMB_X37_Y21_N20
\a3|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a3|process_0~1_combout\ = (\a3|process_0~0_combout\) # (!\a18|stall_cont~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a18|stall_cont~0_combout\,
	datad => \a3|process_0~0_combout\,
	combout => \a3|process_0~1_combout\);

-- Location: LCCOMB_X37_Y21_N0
\a3|inter1reg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \a3|inter1reg~7_combout\ = (\a3|process_0~1_combout\ & (((\a0|mem~0_combout\ & !\a1|pc\(0))))) # (!\a3|process_0~1_combout\ & (\a3|inter1reg~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|inter1reg~6_combout\,
	datab => \a3|process_0~1_combout\,
	datac => \a0|mem~0_combout\,
	datad => \a1|pc\(0),
	combout => \a3|inter1reg~7_combout\);

-- Location: FF_X37_Y21_N1
\a3|inter1reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a3|inter1reg~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|inter1reg\(19));

-- Location: LCCOMB_X36_Y21_N24
\a3|inter1reg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \a3|inter1reg~4_combout\ = (\a3|inter1reg\(20) & ((\a3|inter1reg\(18)) # ((\a3|inter1reg\(19)) # (\a3|inter1reg\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|inter1reg\(20),
	datab => \a3|inter1reg\(18),
	datac => \a3|inter1reg\(19),
	datad => \a3|inter1reg\(17),
	combout => \a3|inter1reg~4_combout\);

-- Location: LCCOMB_X37_Y22_N20
\a0|mem~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a0|mem~1_combout\ = (\a1|pc\(3)) # ((\a1|pc\(1)) # (\a1|pc\(2) $ (\a1|pc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|pc\(2),
	datab => \a1|pc\(3),
	datac => \a1|pc\(1),
	datad => \a1|pc\(0),
	combout => \a0|mem~1_combout\);

-- Location: LCCOMB_X37_Y21_N6
\a3|inter1reg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \a3|inter1reg~5_combout\ = (\a3|process_0~1_combout\ & (!\a1|pc\(4) & ((!\a0|mem~1_combout\)))) # (!\a3|process_0~1_combout\ & (((\a3|inter1reg~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|pc\(4),
	datab => \a3|inter1reg~4_combout\,
	datac => \a0|mem~1_combout\,
	datad => \a3|process_0~1_combout\,
	combout => \a3|inter1reg~5_combout\);

-- Location: FF_X37_Y21_N7
\a3|inter1reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a3|inter1reg~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|inter1reg\(20));

-- Location: LCCOMB_X36_Y21_N0
\a7|dest_outreg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a7|dest_outreg~0_combout\ = (!\a3|inter1reg\(20) & (!\a3|inter1reg\(18) & (!\a3|inter1reg\(19) & !\a3|inter1reg\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|inter1reg\(20),
	datab => \a3|inter1reg\(18),
	datac => \a3|inter1reg\(19),
	datad => \a3|inter1reg\(17),
	combout => \a7|dest_outreg~0_combout\);

-- Location: LCCOMB_X37_Y21_N8
\a3|inter1reg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \a3|inter1reg~10_combout\ = (\a3|inter1reg\(24) & (!\a3|process_0~1_combout\ & ((!\a5|process_1~0_combout\) # (!\a7|dest_outreg~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|dest_outreg~0_combout\,
	datab => \a5|process_1~0_combout\,
	datac => \a3|inter1reg\(24),
	datad => \a3|process_0~1_combout\,
	combout => \a3|inter1reg~10_combout\);

-- Location: LCCOMB_X37_Y21_N14
\a3|inter1reg~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \a3|inter1reg~17_combout\ = (\a3|inter1reg~10_combout\) # ((\a1|pc\(0) & (\a0|mem~0_combout\ & \a3|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|pc\(0),
	datab => \a3|inter1reg~10_combout\,
	datac => \a0|mem~0_combout\,
	datad => \a3|process_0~1_combout\,
	combout => \a3|inter1reg~17_combout\);

-- Location: FF_X37_Y21_N15
\a3|inter1reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a3|inter1reg~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|inter1reg\(24));

-- Location: LCCOMB_X38_Y21_N26
\a3|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a3|process_0~0_combout\ = ((!\a3|inter1reg\(24) & (\a7|dest_outreg~0_combout\ & \a5|process_1~0_combout\))) # (!\a3|inter1reg\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|inter1reg\(24),
	datab => \a7|dest_outreg~0_combout\,
	datac => \a3|inter1reg\(30),
	datad => \a5|process_1~0_combout\,
	combout => \a3|process_0~0_combout\);

-- Location: LCCOMB_X37_Y21_N18
\a3|inter1reg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \a3|inter1reg~8_combout\ = (!\a1|pc\(0) & (\a0|mem~0_combout\ & ((\a3|process_0~0_combout\) # (!\a18|stall_cont~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|pc\(0),
	datab => \a3|process_0~0_combout\,
	datac => \a0|mem~0_combout\,
	datad => \a18|stall_cont~0_combout\,
	combout => \a3|inter1reg~8_combout\);

-- Location: LCCOMB_X37_Y21_N24
\a3|inter1reg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \a3|inter1reg~9_combout\ = (\a3|inter1reg~8_combout\) # ((\a3|inter1reg\(17) & (\a3|inter1reg\(18) & !\a3|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|inter1reg~8_combout\,
	datab => \a3|inter1reg\(17),
	datac => \a3|inter1reg\(18),
	datad => \a3|process_0~1_combout\,
	combout => \a3|inter1reg~9_combout\);

-- Location: FF_X37_Y21_N25
\a3|inter1reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a3|inter1reg~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|inter1reg\(18));

-- Location: LCCOMB_X36_Y21_N14
\a6|WB_cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a6|WB_cont~0_combout\ = (\a3|inter1reg\(30) & (((!\a3|inter1reg\(29))))) # (!\a3|inter1reg\(30) & (((\a3|inter1reg\(29)) # (!\a3|inter1reg\(17))) # (!\a3|inter1reg\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|inter1reg\(30),
	datab => \a3|inter1reg\(18),
	datac => \a3|inter1reg\(29),
	datad => \a3|inter1reg\(17),
	combout => \a6|WB_cont~0_combout\);

-- Location: FF_X36_Y21_N15
\a7|WB_cont_outreg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a6|WB_cont~0_combout\,
	ena => \a18|stall_cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|WB_cont_outreg~q\);

-- Location: FF_X35_Y17_N23
\a11|WB_cont_outreg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a7|WB_cont_outreg~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|WB_cont_outreg~q\);

-- Location: LCCOMB_X35_Y17_N8
\a19|P0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a19|P0~2_combout\ = (\a11|WB_cont_outreg~q\ & (\a11|valid_outreg~q\ & (!\a11|MEM_cont_outreg\(0) & \a19|P0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|WB_cont_outreg~q\,
	datab => \a11|valid_outreg~q\,
	datac => \a11|MEM_cont_outreg\(0),
	datad => \a19|P0~1_combout\,
	combout => \a19|P0~2_combout\);

-- Location: FF_X31_Y17_N19
\a8|RAM[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(0),
	sload => VCC,
	ena => \a8|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[7][0]~q\);

-- Location: FF_X31_Y17_N13
\a8|RAM[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(0),
	sload => VCC,
	ena => \a8|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[5][0]~q\);

-- Location: FF_X32_Y17_N23
\a8|RAM[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(0),
	sload => VCC,
	ena => \a8|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[4][0]~q\);

-- Location: LCCOMB_X32_Y17_N22
\a11|B_outreg~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~12_combout\ = (\a7|rf_a2reg\(1) & ((\a8|RAM[6][0]~q\) # ((\a7|rf_a2reg\(0))))) # (!\a7|rf_a2reg\(1) & (((\a8|RAM[4][0]~q\ & !\a7|rf_a2reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(1),
	datab => \a8|RAM[6][0]~q\,
	datac => \a8|RAM[4][0]~q\,
	datad => \a7|rf_a2reg\(0),
	combout => \a11|B_outreg~12_combout\);

-- Location: LCCOMB_X31_Y17_N12
\a11|B_outreg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~13_combout\ = (\a7|rf_a2reg\(0) & ((\a11|B_outreg~12_combout\ & (\a8|RAM[7][0]~q\)) # (!\a11|B_outreg~12_combout\ & ((\a8|RAM[5][0]~q\))))) # (!\a7|rf_a2reg\(0) & (((\a11|B_outreg~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(0),
	datab => \a8|RAM[7][0]~q\,
	datac => \a8|RAM[5][0]~q\,
	datad => \a11|B_outreg~12_combout\,
	combout => \a11|B_outreg~13_combout\);

-- Location: LCCOMB_X31_Y20_N20
\a8|RAM[2][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a8|RAM[2][0]~0_combout\ = !\a22|i5_W2_outreg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a22|i5_W2_outreg\(0),
	combout => \a8|RAM[2][0]~0_combout\);

-- Location: FF_X31_Y20_N21
\a8|RAM[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|RAM[2][0]~0_combout\,
	ena => \a8|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[2][0]~q\);

-- Location: LCCOMB_X30_Y18_N28
\a8|RAM[1][0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a8|RAM[1][0]~1_combout\ = !\a22|i5_W2_outreg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a22|i5_W2_outreg\(0),
	combout => \a8|RAM[1][0]~1_combout\);

-- Location: FF_X30_Y18_N29
\a8|RAM[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|RAM[1][0]~1_combout\,
	ena => \a8|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[1][0]~q\);

-- Location: LCCOMB_X30_Y18_N6
\a8|RAM[0][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a8|RAM[0][0]~2_combout\ = !\a22|i5_W2_outreg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a22|i5_W2_outreg\(0),
	combout => \a8|RAM[0][0]~2_combout\);

-- Location: FF_X30_Y18_N7
\a8|RAM[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|RAM[0][0]~2_combout\,
	ena => \a8|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[0][0]~q\);

-- Location: LCCOMB_X30_Y18_N24
\a11|B_outreg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~8_combout\ = (\a7|rf_a2reg\(0) & (((\a7|rf_a2reg\(1))) # (!\a8|RAM[1][0]~q\))) # (!\a7|rf_a2reg\(0) & (((!\a8|RAM[0][0]~q\ & !\a7|rf_a2reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(0),
	datab => \a8|RAM[1][0]~q\,
	datac => \a8|RAM[0][0]~q\,
	datad => \a7|rf_a2reg\(1),
	combout => \a11|B_outreg~8_combout\);

-- Location: FF_X31_Y20_N7
\a8|RAM[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(0),
	sload => VCC,
	ena => \a8|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[3][0]~q\);

-- Location: LCCOMB_X31_Y20_N12
\a11|B_outreg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~9_combout\ = (\a7|rf_a2reg\(1) & ((\a11|B_outreg~8_combout\ & ((\a8|RAM[3][0]~q\))) # (!\a11|B_outreg~8_combout\ & (!\a8|RAM[2][0]~q\)))) # (!\a7|rf_a2reg\(1) & (((\a11|B_outreg~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a2reg\(1),
	datab => \a8|RAM[2][0]~q\,
	datac => \a11|B_outreg~8_combout\,
	datad => \a8|RAM[3][0]~q\,
	combout => \a11|B_outreg~9_combout\);

-- Location: LCCOMB_X32_Y20_N8
\a11|B_outreg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~11_combout\ = (\a11|B_outreg[10]~10_combout\ & ((\a11|B_outreg~9_combout\) # ((\a11|B_outreg[10]~7_combout\)))) # (!\a11|B_outreg[10]~10_combout\ & (((\a22|i5_W2_outreg\(0) & !\a11|B_outreg[10]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~9_combout\,
	datab => \a22|i5_W2_outreg\(0),
	datac => \a11|B_outreg[10]~10_combout\,
	datad => \a11|B_outreg[10]~7_combout\,
	combout => \a11|B_outreg~11_combout\);

-- Location: LCCOMB_X34_Y20_N16
\a21|mem2_d1_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_d1_out[0]~0_combout\ = (\a20|MEM_contreg\(0) & \a22|i5_W2_outreg[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a20|MEM_contreg\(0),
	datad => \a22|i5_W2_outreg[0]~0_combout\,
	combout => \a21|mem2_d1_out[0]~0_combout\);

-- Location: LCCOMB_X32_Y20_N28
\a11|B_outreg~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~14_combout\ = (\a11|B_outreg[10]~7_combout\ & ((\a11|B_outreg~11_combout\ & (\a11|B_outreg~13_combout\)) # (!\a11|B_outreg~11_combout\ & ((\a21|mem2_d1_out[0]~0_combout\))))) # (!\a11|B_outreg[10]~7_combout\ & 
-- (((\a11|B_outreg~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~13_combout\,
	datab => \a11|B_outreg[10]~7_combout\,
	datac => \a11|B_outreg~11_combout\,
	datad => \a21|mem2_d1_out[0]~0_combout\,
	combout => \a11|B_outreg~14_combout\);

-- Location: LCCOMB_X32_Y20_N18
\a11|B_outreg~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~16_combout\ = (\a11|B_outreg~134_combout\ & ((\a11|B_outreg~14_combout\) # ((\a20|W_outreg\(0) & \a11|B_outreg~135_combout\)))) # (!\a11|B_outreg~134_combout\ & (\a20|W_outreg\(0) & (\a11|B_outreg~135_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg~134_combout\,
	datab => \a20|W_outreg\(0),
	datac => \a11|B_outreg~135_combout\,
	datad => \a11|B_outreg~14_combout\,
	combout => \a11|B_outreg~16_combout\);

-- Location: LCCOMB_X32_Y20_N0
\a11|B_outreg~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|B_outreg~17_combout\ = (\a11|B_outreg~16_combout\) # ((\a19|P0~2_combout\ & \a12|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a19|P0~2_combout\,
	datab => \a12|Add0~0_combout\,
	datad => \a11|B_outreg~16_combout\,
	combout => \a11|B_outreg~17_combout\);

-- Location: FF_X32_Y20_N1
\a11|B_outreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|B_outreg~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|B_outreg\(0));

-- Location: LCCOMB_X32_Y20_N30
\a20|W_outreg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a20|W_outreg~0_combout\ = (\a11|MEM_cont_outreg\(1) & (\a11|B_outreg\(0))) # (!\a11|MEM_cont_outreg\(1) & ((\a12|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|B_outreg\(0),
	datac => \a11|MEM_cont_outreg\(1),
	datad => \a12|Add0~0_combout\,
	combout => \a20|W_outreg~0_combout\);

-- Location: FF_X32_Y20_N31
\a20|W_outreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a20|W_outreg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a20|W_outreg\(0));

-- Location: LCCOMB_X32_Y17_N16
\a11|A_outreg~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~14_combout\ = (\a7|rf_a1reg\(0) & (((\a7|rf_a1reg\(1))))) # (!\a7|rf_a1reg\(0) & ((\a7|rf_a1reg\(1) & ((\a8|RAM[6][0]~q\))) # (!\a7|rf_a1reg\(1) & (\a8|RAM[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[4][0]~q\,
	datab => \a7|rf_a1reg\(0),
	datac => \a8|RAM[6][0]~q\,
	datad => \a7|rf_a1reg\(1),
	combout => \a11|A_outreg~14_combout\);

-- Location: LCCOMB_X31_Y17_N18
\a11|A_outreg~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~15_combout\ = (\a7|rf_a1reg\(0) & ((\a11|A_outreg~14_combout\ & ((\a8|RAM[7][0]~q\))) # (!\a11|A_outreg~14_combout\ & (\a8|RAM[5][0]~q\)))) # (!\a7|rf_a1reg\(0) & (((\a11|A_outreg~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[5][0]~q\,
	datab => \a7|rf_a1reg\(0),
	datac => \a8|RAM[7][0]~q\,
	datad => \a11|A_outreg~14_combout\,
	combout => \a11|A_outreg~15_combout\);

-- Location: LCCOMB_X30_Y18_N18
\a11|A_outreg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~7_combout\ = (\a7|rf_a1reg\(0) & (((\a7|rf_a1reg\(1)) # (!\a8|RAM[1][0]~q\)))) # (!\a7|rf_a1reg\(0) & (!\a8|RAM[0][0]~q\ & ((!\a7|rf_a1reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[0][0]~q\,
	datab => \a8|RAM[1][0]~q\,
	datac => \a7|rf_a1reg\(0),
	datad => \a7|rf_a1reg\(1),
	combout => \a11|A_outreg~7_combout\);

-- Location: LCCOMB_X31_Y20_N6
\a11|A_outreg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~8_combout\ = (\a11|A_outreg~7_combout\ & (((\a8|RAM[3][0]~q\) # (!\a7|rf_a1reg\(1))))) # (!\a11|A_outreg~7_combout\ & (!\a8|RAM[2][0]~q\ & ((\a7|rf_a1reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg~7_combout\,
	datab => \a8|RAM[2][0]~q\,
	datac => \a8|RAM[3][0]~q\,
	datad => \a7|rf_a1reg\(1),
	combout => \a11|A_outreg~8_combout\);

-- Location: LCCOMB_X34_Y20_N10
\a11|A_outreg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~13_combout\ = (\a11|A_outreg[7]~12_combout\ & (((\a11|A_outreg[7]~11_combout\) # (\a21|mem2_d1_out[0]~0_combout\)))) # (!\a11|A_outreg[7]~12_combout\ & (\a22|i5_W2_outreg\(0) & (!\a11|A_outreg[7]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a22|i5_W2_outreg\(0),
	datab => \a11|A_outreg[7]~12_combout\,
	datac => \a11|A_outreg[7]~11_combout\,
	datad => \a21|mem2_d1_out[0]~0_combout\,
	combout => \a11|A_outreg~13_combout\);

-- Location: LCCOMB_X35_Y20_N12
\a11|A_outreg~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~16_combout\ = (\a11|A_outreg[7]~11_combout\ & ((\a11|A_outreg~13_combout\ & (\a11|A_outreg~15_combout\)) # (!\a11|A_outreg~13_combout\ & ((\a11|A_outreg~8_combout\))))) # (!\a11|A_outreg[7]~11_combout\ & (((\a11|A_outreg~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg~15_combout\,
	datab => \a11|A_outreg[7]~11_combout\,
	datac => \a11|A_outreg~8_combout\,
	datad => \a11|A_outreg~13_combout\,
	combout => \a11|A_outreg~16_combout\);

-- Location: LCCOMB_X35_Y20_N8
\a11|A_outreg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg[0]~0_combout\ = (\a19|N2~0_combout\ & (\a20|W_outreg\(0))) # (!\a19|N2~0_combout\ & ((\a11|A_outreg~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a19|N2~0_combout\,
	datab => \a20|W_outreg\(0),
	datad => \a11|A_outreg~16_combout\,
	combout => \a11|A_outreg[0]~0_combout\);

-- Location: FF_X35_Y20_N9
\a11|A_outreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|A_outreg[0]~0_combout\,
	asdata => \a12|Add0~0_combout\,
	sload => \a19|N0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|A_outreg\(0));

-- Location: FF_X36_Y20_N15
\a1|pc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a12|Add0~0_combout\,
	clrn => \nreset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a1|pc\(0));

-- Location: LCCOMB_X37_Y21_N28
\a0|mem~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \a0|mem~3_combout\ = (!\a1|pc\(0) & \a0|mem~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|pc\(0),
	datac => \a0|mem~0_combout\,
	combout => \a0|mem~3_combout\);

-- Location: FF_X37_Y21_N29
\a3|inter1reg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a0|mem~3_combout\,
	ena => \a3|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|inter1reg\(29));

-- Location: LCCOMB_X37_Y20_N22
\a6|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a6|Equal0~0_combout\ = (\a3|inter1reg\(29) & \a3|inter1reg\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a3|inter1reg\(29),
	datac => \a3|inter1reg\(30),
	combout => \a6|Equal0~0_combout\);

-- Location: FF_X37_Y20_N23
\a7|MEM_cont_outreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a6|Equal0~0_combout\,
	ena => \a18|stall_cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|MEM_cont_outreg\(1));

-- Location: LCCOMB_X37_Y20_N10
\a11|MEM_cont_outreg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|MEM_cont_outreg[1]~feeder_combout\ = \a7|MEM_cont_outreg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a7|MEM_cont_outreg\(1),
	combout => \a11|MEM_cont_outreg[1]~feeder_combout\);

-- Location: FF_X37_Y20_N11
\a11|MEM_cont_outreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|MEM_cont_outreg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|MEM_cont_outreg\(1));

-- Location: LCCOMB_X32_Y20_N20
\a20|W_outreg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \a20|W_outreg~4_combout\ = (\a11|MEM_cont_outreg\(1) & (\a11|B_outreg\(4))) # (!\a11|MEM_cont_outreg\(1) & ((\a12|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|MEM_cont_outreg\(1),
	datab => \a11|B_outreg\(4),
	datac => \a12|Add0~8_combout\,
	combout => \a20|W_outreg~4_combout\);

-- Location: FF_X32_Y20_N21
\a20|W_outreg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a20|W_outreg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a20|W_outreg\(4));

-- Location: LCCOMB_X30_Y20_N18
\a11|A_outreg~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~35_combout\ = (\a7|rf_a1reg\(0) & (((\a8|RAM[1][4]~q\) # (\a7|rf_a1reg\(1))))) # (!\a7|rf_a1reg\(0) & (\a8|RAM[0][4]~q\ & ((!\a7|rf_a1reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a1reg\(0),
	datab => \a8|RAM[0][4]~q\,
	datac => \a8|RAM[1][4]~q\,
	datad => \a7|rf_a1reg\(1),
	combout => \a11|A_outreg~35_combout\);

-- Location: LCCOMB_X31_Y20_N2
\a11|A_outreg~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~36_combout\ = (\a11|A_outreg~35_combout\ & ((\a8|RAM[3][4]~q\) # ((!\a7|rf_a1reg\(1))))) # (!\a11|A_outreg~35_combout\ & (((\a8|RAM[2][4]~q\ & \a7|rf_a1reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg~35_combout\,
	datab => \a8|RAM[3][4]~q\,
	datac => \a8|RAM[2][4]~q\,
	datad => \a7|rf_a1reg\(1),
	combout => \a11|A_outreg~36_combout\);

-- Location: LCCOMB_X32_Y17_N28
\a11|A_outreg~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~38_combout\ = (\a7|rf_a1reg\(1) & (((\a8|RAM[6][4]~q\) # (\a7|rf_a1reg\(0))))) # (!\a7|rf_a1reg\(1) & (\a8|RAM[4][4]~q\ & ((!\a7|rf_a1reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[4][4]~q\,
	datab => \a7|rf_a1reg\(1),
	datac => \a8|RAM[6][4]~q\,
	datad => \a7|rf_a1reg\(0),
	combout => \a11|A_outreg~38_combout\);

-- Location: LCCOMB_X31_Y17_N8
\a11|A_outreg~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~39_combout\ = (\a7|rf_a1reg\(0) & ((\a11|A_outreg~38_combout\ & (\a8|RAM[7][4]~q\)) # (!\a11|A_outreg~38_combout\ & ((\a8|RAM[5][4]~q\))))) # (!\a7|rf_a1reg\(0) & (((\a11|A_outreg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|RAM[7][4]~q\,
	datab => \a7|rf_a1reg\(0),
	datac => \a8|RAM[5][4]~q\,
	datad => \a11|A_outreg~38_combout\,
	combout => \a11|A_outreg~39_combout\);

-- Location: LCCOMB_X32_Y20_N2
\a11|A_outreg~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~37_combout\ = (\a11|A_outreg[7]~11_combout\ & (((\a11|A_outreg[7]~12_combout\)))) # (!\a11|A_outreg[7]~11_combout\ & ((\a11|A_outreg[7]~12_combout\ & ((\a21|mem2_d1_out[4]~4_combout\))) # (!\a11|A_outreg[7]~12_combout\ & 
-- (\a22|i5_W2_outreg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg[7]~11_combout\,
	datab => \a22|i5_W2_outreg\(4),
	datac => \a11|A_outreg[7]~12_combout\,
	datad => \a21|mem2_d1_out[4]~4_combout\,
	combout => \a11|A_outreg~37_combout\);

-- Location: LCCOMB_X32_Y20_N24
\a11|A_outreg~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~40_combout\ = (\a11|A_outreg[7]~11_combout\ & ((\a11|A_outreg~37_combout\ & ((\a11|A_outreg~39_combout\))) # (!\a11|A_outreg~37_combout\ & (\a11|A_outreg~36_combout\)))) # (!\a11|A_outreg[7]~11_combout\ & (((\a11|A_outreg~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg~36_combout\,
	datab => \a11|A_outreg[7]~11_combout\,
	datac => \a11|A_outreg~39_combout\,
	datad => \a11|A_outreg~37_combout\,
	combout => \a11|A_outreg~40_combout\);

-- Location: LCCOMB_X35_Y20_N16
\a11|A_outreg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg[4]~4_combout\ = (\a19|N2~0_combout\ & (\a20|W_outreg\(4))) # (!\a19|N2~0_combout\ & ((\a11|A_outreg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a19|N2~0_combout\,
	datab => \a20|W_outreg\(4),
	datad => \a11|A_outreg~40_combout\,
	combout => \a11|A_outreg[4]~4_combout\);

-- Location: FF_X35_Y20_N17
\a11|A_outreg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|A_outreg[4]~4_combout\,
	asdata => \a12|Add0~8_combout\,
	sload => \a19|N0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|A_outreg\(4));

-- Location: FF_X36_Y20_N25
\a1|pc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a12|Add0~8_combout\,
	clrn => \nreset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a1|pc\(4));

-- Location: LCCOMB_X37_Y21_N22
\a0|mem~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a0|mem~0_combout\ = (!\a1|pc\(4) & (!\a1|pc\(2) & (!\a1|pc\(3) & !\a1|pc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|pc\(4),
	datab => \a1|pc\(2),
	datac => \a1|pc\(3),
	datad => \a1|pc\(1),
	combout => \a0|mem~0_combout\);

-- Location: FF_X37_Y21_N21
\a3|inter1reg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a0|mem~0_combout\,
	sload => VCC,
	ena => \a3|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|inter1reg\(30));

-- Location: LCCOMB_X36_Y21_N28
\a7|rf_a1reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a7|rf_a1reg~1_combout\ = (\a3|inter1reg\(30) & (\a3|inter1reg\(26))) # (!\a3|inter1reg\(30) & ((\a3|inter1reg\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a3|inter1reg\(30),
	datac => \a3|inter1reg\(26),
	datad => \a3|inter1reg\(23),
	combout => \a7|rf_a1reg~1_combout\);

-- Location: LCCOMB_X35_Y20_N10
\a7|rf_a1reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a7|rf_a1reg[0]~feeder_combout\ = \a7|rf_a1reg~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a7|rf_a1reg~1_combout\,
	combout => \a7|rf_a1reg[0]~feeder_combout\);

-- Location: FF_X35_Y20_N11
\a7|rf_a1reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a7|rf_a1reg[0]~feeder_combout\,
	ena => \a18|stall_cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|rf_a1reg\(0));

-- Location: LCCOMB_X36_Y17_N26
\a19|N3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a19|N3~0_combout\ = (\a7|rf_a1reg\(0) & (\a20|dest_outreg\(0) & (\a20|dest_outreg\(1) $ (!\a7|rf_a1reg\(1))))) # (!\a7|rf_a1reg\(0) & (!\a20|dest_outreg\(0) & (\a20|dest_outreg\(1) $ (!\a7|rf_a1reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a1reg\(0),
	datab => \a20|dest_outreg\(1),
	datac => \a20|dest_outreg\(0),
	datad => \a7|rf_a1reg\(1),
	combout => \a19|N3~0_combout\);

-- Location: LCCOMB_X36_Y17_N0
\a19|N3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a19|N3~1_combout\ = (\a19|N3~0_combout\ & (\a19|P3~1_combout\ & (\a20|dest_outreg\(2) $ (!\a7|rf_a1reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a19|N3~0_combout\,
	datab => \a20|dest_outreg\(2),
	datac => \a7|rf_a1reg\(2),
	datad => \a19|P3~1_combout\,
	combout => \a19|N3~1_combout\);

-- Location: LCCOMB_X35_Y20_N30
\a19|N2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a19|N2~0_combout\ = (\a19|N3~1_combout\ & ((!\a20|MEM_contreg\(0)) # (!\a20|i4_validreg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a19|N3~1_combout\,
	datac => \a20|i4_validreg~q\,
	datad => \a20|MEM_contreg\(0),
	combout => \a19|N2~0_combout\);

-- Location: LCCOMB_X32_Y17_N2
\a11|A_outreg~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~32_combout\ = (\a7|rf_a1reg\(0) & (((\a7|rf_a1reg\(1))))) # (!\a7|rf_a1reg\(0) & ((\a7|rf_a1reg\(1) & ((\a8|RAM[6][3]~q\))) # (!\a7|rf_a1reg\(1) & (\a8|RAM[4][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a1reg\(0),
	datab => \a8|RAM[4][3]~q\,
	datac => \a8|RAM[6][3]~q\,
	datad => \a7|rf_a1reg\(1),
	combout => \a11|A_outreg~32_combout\);

-- Location: LCCOMB_X31_Y17_N0
\a11|A_outreg~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~33_combout\ = (\a11|A_outreg~32_combout\ & (((\a8|RAM[7][3]~q\)) # (!\a7|rf_a1reg\(0)))) # (!\a11|A_outreg~32_combout\ & (\a7|rf_a1reg\(0) & (\a8|RAM[5][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg~32_combout\,
	datab => \a7|rf_a1reg\(0),
	datac => \a8|RAM[5][3]~q\,
	datad => \a8|RAM[7][3]~q\,
	combout => \a11|A_outreg~33_combout\);

-- Location: LCCOMB_X30_Y20_N26
\a11|A_outreg~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~29_combout\ = (\a7|rf_a1reg\(0) & (((\a8|RAM[1][3]~q\) # (\a7|rf_a1reg\(1))))) # (!\a7|rf_a1reg\(0) & (\a8|RAM[0][3]~q\ & ((!\a7|rf_a1reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a1reg\(0),
	datab => \a8|RAM[0][3]~q\,
	datac => \a8|RAM[1][3]~q\,
	datad => \a7|rf_a1reg\(1),
	combout => \a11|A_outreg~29_combout\);

-- Location: LCCOMB_X31_Y21_N14
\a11|A_outreg~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~30_combout\ = (\a7|rf_a1reg\(1) & ((\a11|A_outreg~29_combout\ & ((!\a8|RAM[3][3]~q\))) # (!\a11|A_outreg~29_combout\ & (!\a8|RAM[2][3]~q\)))) # (!\a7|rf_a1reg\(1) & (\a11|A_outreg~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|rf_a1reg\(1),
	datab => \a11|A_outreg~29_combout\,
	datac => \a8|RAM[2][3]~q\,
	datad => \a8|RAM[3][3]~q\,
	combout => \a11|A_outreg~30_combout\);

-- Location: LCCOMB_X32_Y21_N8
\a11|A_outreg~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~31_combout\ = (\a11|A_outreg[7]~12_combout\ & (((\a11|A_outreg[7]~11_combout\)))) # (!\a11|A_outreg[7]~12_combout\ & ((\a11|A_outreg[7]~11_combout\ & (\a11|A_outreg~30_combout\)) # (!\a11|A_outreg[7]~11_combout\ & 
-- ((\a22|i5_W2_outreg\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg~30_combout\,
	datab => \a22|i5_W2_outreg\(3),
	datac => \a11|A_outreg[7]~12_combout\,
	datad => \a11|A_outreg[7]~11_combout\,
	combout => \a11|A_outreg~31_combout\);

-- Location: LCCOMB_X32_Y21_N30
\a11|A_outreg~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg~34_combout\ = (\a11|A_outreg~31_combout\ & ((\a11|A_outreg~33_combout\) # ((!\a11|A_outreg[7]~12_combout\)))) # (!\a11|A_outreg~31_combout\ & (((\a11|A_outreg[7]~12_combout\ & \a21|mem2_d1_out[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a11|A_outreg~33_combout\,
	datab => \a11|A_outreg~31_combout\,
	datac => \a11|A_outreg[7]~12_combout\,
	datad => \a21|mem2_d1_out[3]~3_combout\,
	combout => \a11|A_outreg~34_combout\);

-- Location: LCCOMB_X35_Y20_N26
\a11|A_outreg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \a11|A_outreg[3]~3_combout\ = (\a19|N2~0_combout\ & (\a20|W_outreg\(3))) # (!\a19|N2~0_combout\ & ((\a11|A_outreg~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a19|N2~0_combout\,
	datab => \a20|W_outreg\(3),
	datad => \a11|A_outreg~34_combout\,
	combout => \a11|A_outreg[3]~3_combout\);

-- Location: FF_X35_Y20_N27
\a11|A_outreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a11|A_outreg[3]~3_combout\,
	asdata => \a12|Add0~6_combout\,
	sload => \a19|N0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a11|A_outreg\(3));

-- Location: FF_X36_Y20_N19
\a20|L_outreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a12|Add0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a20|L_outreg\(3));

-- Location: LCCOMB_X35_Y18_N30
\a21|mem2_rtl_0_bypass[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[7]~feeder_combout\ = \a20|L_outreg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a20|L_outreg\(3),
	combout => \a21|mem2_rtl_0_bypass[7]~feeder_combout\);

-- Location: FF_X35_Y18_N31
\a21|mem2_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(7));

-- Location: LCCOMB_X35_Y18_N28
\a21|mem2_rtl_0_bypass[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[5]~feeder_combout\ = \a20|L_outreg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a20|L_outreg\(2),
	combout => \a21|mem2_rtl_0_bypass[5]~feeder_combout\);

-- Location: FF_X35_Y18_N29
\a21|mem2_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(5));

-- Location: FF_X35_Y18_N13
\a21|mem2_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a12|Add0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(8));

-- Location: LCCOMB_X35_Y18_N6
\a21|mem2_rtl_0_bypass[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[6]~feeder_combout\ = \a12|Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a12|Add0~4_combout\,
	combout => \a21|mem2_rtl_0_bypass[6]~feeder_combout\);

-- Location: FF_X35_Y18_N7
\a21|mem2_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(6));

-- Location: LCCOMB_X35_Y18_N12
\a21|mem2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2~24_combout\ = (\a21|mem2_rtl_0_bypass\(7) & (\a21|mem2_rtl_0_bypass\(8) & (\a21|mem2_rtl_0_bypass\(5) $ (!\a21|mem2_rtl_0_bypass\(6))))) # (!\a21|mem2_rtl_0_bypass\(7) & (!\a21|mem2_rtl_0_bypass\(8) & (\a21|mem2_rtl_0_bypass\(5) $ 
-- (!\a21|mem2_rtl_0_bypass\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a21|mem2_rtl_0_bypass\(7),
	datab => \a21|mem2_rtl_0_bypass\(5),
	datac => \a21|mem2_rtl_0_bypass\(8),
	datad => \a21|mem2_rtl_0_bypass\(6),
	combout => \a21|mem2~24_combout\);

-- Location: LCCOMB_X35_Y18_N16
\a21|mem2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2~26_combout\ = (\a21|mem2~24_combout\ & (\a21|mem2~25_combout\ & (\a21|mem2_rtl_0_bypass\(0) & \a21|mem2~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a21|mem2~24_combout\,
	datab => \a21|mem2~25_combout\,
	datac => \a21|mem2_rtl_0_bypass\(0),
	datad => \a21|mem2~23_combout\,
	combout => \a21|mem2~26_combout\);

-- Location: LCCOMB_X34_Y20_N30
\a21|mem2~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2~42\ = (\a21|mem2~26_combout\) # (!\a21|mem2_rtl_0_bypass\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a21|mem2_rtl_0_bypass\(14),
	datad => \a21|mem2~26_combout\,
	combout => \a21|mem2~42\);

-- Location: LCCOMB_X34_Y20_N8
\a21|mem2_rtl_0_bypass[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a21|mem2_rtl_0_bypass[13]~feeder_combout\ = \a20|W_outreg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a20|W_outreg\(0),
	combout => \a21|mem2_rtl_0_bypass[13]~feeder_combout\);

-- Location: FF_X34_Y20_N9
\a21|mem2_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a21|mem2_rtl_0_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a21|mem2_rtl_0_bypass\(13));

-- Location: LCCOMB_X34_Y20_N28
\a22|i5_W2_outreg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a22|i5_W2_outreg[0]~0_combout\ = (\a21|mem2~42\ & (\a21|mem2_rtl_0_bypass\(13))) # (!\a21|mem2~42\ & ((\a21|mem2_rtl_0|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a21|mem2~42\,
	datab => \a21|mem2_rtl_0_bypass\(13),
	datad => \a21|mem2_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \a22|i5_W2_outreg[0]~0_combout\);

-- Location: FF_X34_Y20_N29
\a22|i5_W2_outreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a22|i5_W2_outreg[0]~0_combout\,
	asdata => \a20|W_outreg\(0),
	sload => \a20|ALT_INV_MEM_contreg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a22|i5_W2_outreg\(0));

-- Location: FF_X32_Y17_N17
\a8|RAM[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a22|i5_W2_outreg\(0),
	sload => VCC,
	ena => \a8|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|RAM[6][0]~q\);

ww_reg(0) <= \reg[0]~output_o\;

ww_reg(1) <= \reg[1]~output_o\;

ww_reg(2) <= \reg[2]~output_o\;

ww_reg(3) <= \reg[3]~output_o\;

ww_reg(4) <= \reg[4]~output_o\;

ww_reg(5) <= \reg[5]~output_o\;

ww_reg(6) <= \reg[6]~output_o\;

ww_reg(7) <= \reg[7]~output_o\;
END structure;


