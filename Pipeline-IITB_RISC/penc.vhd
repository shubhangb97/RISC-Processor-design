--Updated by Vineet on 4th Nov at 4.40pm
library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity penc is
  port(clk:in std_logic;
       reset:in std_logic;--to reset t
       ir:in std_logic_vector(15 downto 0);
       penc_control:in std_logic;
       penc_out:out std_logic_vector(2 downto 0);
       decod_out:out std_logic_vector(7 downto 0);
       t:out std_logic_vector(8 downto 0);
       nor_ir:out std_logic);
end entity;

architecture behave of penc is
signal treg:unsigned(8 downto 0):=(others=>'0');
  begin
    process(penc_control,ir)
		begin
		--if(rising_edge(clk)) then
      if(penc_control='1') then
        if(ir(0)='1') then
          penc_out<="000";
          decod_out<="11111110";           --decod_out<="00000001";
          --if(rising_edge(clk)) then
          --treg<=treg+"000000001";
          --end if;
        elsif(ir(1)='1')then
          penc_out<="001";
          decod_out<="11111101";           --decod_out<="00000010";
          --if(rising_edge(clk)) then
          --treg<=treg+"000000001";
          --end if;
        elsif(ir(2)='1') then
          penc_out<="010";
          decod_out<="11111011";          --decod_out<="000000100";
          --if(rising_edge(clk)) then
          --treg<=treg+"000000001";
          --end if;
        elsif(ir(3)='1') then
          penc_out<="011";
          decod_out<="11110111";           --decod_out<="00001000";
          --if(rising_edge(clk)) then
          --treg<=treg+"000000001";
          --end if;
        elsif(ir(4)='1') then
          penc_out<="100";
          decod_out<="11101111";           --decod_out<="00010000";
          --if(rising_edge(clk)) then
          --treg<=treg+"000000001";
          --end if;
        elsif(ir(5)='1') then
          penc_out<="101";
          decod_out<="11011111";           --decod_out<="00100000"
          --if(rising_edge(clk)) then
          --treg<=treg+"000000001";
          --end if;
        elsif(ir(6)='1') then
          penc_out<="110";
          decod_out<="10111111";           --decod_out<="01000000";
          --if(rising_edge(clk)) then
          --treg<=treg+"000000001";
          --end if;
        elsif(ir(7)='1') then
          penc_out<="111";
          decod_out<="01111111";           --decod_out,="10000000";
          --if(rising_edge(clk)) then
          --treg<=treg+"000000001";
          --end if;
        else
          penc_out<="000";                 --don't care
          decod_out<="11111111";           --don't care
        end if;
    else
      penc_out<=(others=>'0');
      decod_out<="11111111";
		--if(rising_edge(clk)) then
      --treg<="000000000";
		--end if;
    end if;
    --if(reset='1' and rising_edge(clk)) then
    --treg<="000000000";
  --end if;
--end if;
  end process;


  process(clk,ir,penc_control)
  begin
    if(rising_edge(clk)) then
	--if(rising_edge(clk) and ir(0)='1') then
  if(penc_control='1' and ((ir(0)='1') or (ir(1)='1') or (ir(2)='1') or (ir(3)='1') or (ir(4)='1') or (ir(5)='1') or (ir(6)='1') or (ir(7)='1'))) then
    if(ir(0)='1') then          --decod_out<="00000001";
      treg<=treg+"000000001";
    elsif(ir(1)='1')then

      treg<=treg+"000000001";

    elsif(ir(2)='1') then
      treg<=treg+"000000001";
    elsif(ir(3)='1') then

      treg<=treg+"000000001";
    elsif(ir(4)='1') then

      treg<=treg+"000000001";
      --end if;
    elsif(ir(5)='1') then

      treg<=treg+"000000001";
      --end if;
    elsif(ir(6)='1') then

      treg<=treg+"000000001";
      --end if;
    elsif(ir(7)='1') then

      treg<=treg+"000000001";
      --end if;
    --end if;--ir0
    else
      treg<=(others=>'0');
    end if;--penccontrol
    --if(reset='1' and rising_edge(clk)) then
      --treg<=(others=>'0');
    --end if;
  else
    treg<=(others=>'0');
	 end if;
 --else
   --treg<=(others=>'0');
 end if;
--clock

end process;
  t<=std_logic_vector(treg);
  nor_ir <= not (ir(0) or ir(1) or ir(2) or ir(3) or ir(4) or ir(5) or ir(6) or ir(7));
end behave;
