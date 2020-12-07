--Updated by Vineet on 4th Nov at 4.40pm
library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity penc is
  port(ir:in std_logic_vector(15 downto 0);
       penc_control:in std_logic;
       penc_out:out unsigned(2 downto 0);
       decod_out:out std_logic_vector(7 downto 0);
       nor_ir:out std_logic);
end entity;

architecture behave of penc is
  begin
    process(penc_control,ir)
		begin
      if(penc_control='1') then
        if(ir(0)='1') then
          penc_out<="000";
          decod_out<="11111110";           --decod_out<="00000001";
        elsif(ir(1)='1')then
          penc_out<="001";
          decod_out<="11111101";           --decod_out<="00000010";
        elsif(ir(2)='1') then
          penc_out<="010";
          decod_out<="11111011";          --decod_out<="000000100";
        elsif(ir(3)='1') then
          penc_out<="011";
          decod_out<="11110111";           --decod_out<="00001000";
        elsif(ir(4)='1') then
          penc_out<="100";
          decod_out<="11101111";           --decod_out<="00010000";
        elsif(ir(5)='1') then
          penc_out<="101";
          decod_out<="11011111";           --decod_out<="00100000"
        elsif(ir(6)='1') then
          penc_out<="110";
          decod_out<="10111111";           --decod_out<="01000000";
        elsif(ir(7)='1') then
          penc_out<="111";
          decod_out<="01111111";           --decod_out,="10000000";
        else
          penc_out<="000";                 --don't care
          decod_out<="11111111";           --don't care
        end if;
    else
      penc_out<=(others=>'0');
      decod_out<="11111111";
    end if;
  end process;
  nor_ir <= not (ir(0) or ir(1) or ir(2) or ir(3) or ir(4) or ir(5) or ir(6) or ir(7));
end behave;
