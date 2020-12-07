library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity inst_dec is

port(ir :in std_logic_vector(15 downto 0);
	  ID_cont: out std_logic_vector(5 downto 0);
	  OR_cont: out std_logic_vector(3 downto 0);
	  EX_cont: out std_logic_vector(8 downto 0);
	  MEM_cont: out std_logic_vector(2 downto 0);
	  WB_cont: out std_logic);

end entity;

architecture katniss of inst_dec is

begin

 process(ir)

  variable end4b: std_logic_vector(3 downto 0);    -- the ending 4 bits of the instruction
  variable start2b: std_logic_vector(1 downto 0);  -- the starting 4 bits

  begin

	end4b := ir(15 downto 12); -- for checking the opcode
   start2b := ir(1 downto 0);

	--BEGINS
	--if(rising_edge(clk)) then

	  if(end4b="0000") then

	  --1. ADD
	    if(start2b="00") then
		   ID_cont<="010110";

			OR_cont<="1100";
			EX_cont<="111101000";
			MEM_cont<="000";
			WB_cont<='1';

		--2. ADCs
		   elsif(start2b="10") then
		   ID_cont<="010110";
			OR_cont<="1100";
			EX_cont<="111101000";
			MEM_cont<="000";
			WB_cont<='1';

		 --3. ADZ
		   elsif(start2b="01") then
		   ID_cont<="010110";
			OR_cont<="1100";
			EX_cont<="111101000";
			MEM_cont<="000";
			WB_cont<='1';

			--dont care
			else
			ID_cont<="010110";
		 OR_cont<="1100";
		 EX_cont<="111101000";
		 MEM_cont<="000";
		 WB_cont<='0';

			end if;

		--4. ADI
		elsif(end4b="0001") then
		   ID_cont<="010110";
			OR_cont<="1010";
			EX_cont<="101101000";
			MEM_cont<="000";
			WB_cont<='1';


	   elsif(end4b="0010") then

	  --5. NDU
	      if(start2b="00") then
		     ID_cont<="010110";
			  OR_cont<="1100";
			  EX_cont<="110101010";
			  MEM_cont<="000";
			  WB_cont<='1';

		--6. NDC
		   elsif(start2b="10") then
		     ID_cont<="010110";
		     OR_cont<="1100";
			  EX_cont<="110101010";
			  MEM_cont<="000";
			  WB_cont<='1';

		 --7. NDZ
		   elsif(start2b="01") then
		     ID_cont<="010110";
			  OR_cont<="1100";
			  EX_cont<="110101010";
			  MEM_cont<="000";
			  WB_cont<='1';
				--dont care
			else
				ID_cont<="010110";
 			OR_cont<="1100";
 			EX_cont<="110101010";
 			MEM_cont<="000";
 			WB_cont<='0';

			end if;

		 --8. LHI
		 elsif(end4b="0011") then
		     ID_cont<="010110";
			  OR_cont<="0001";
			  EX_cont<="110000001";
			  MEM_cont<="000";
			  WB_cont<='1';

			--9. LW
		 elsif(end4b="0100") then
		     ID_cont<="010110";
			  OR_cont<="0110";
			  EX_cont<="100001000";
			  MEM_cont<="101";
			  WB_cont<='1';

			  --10. SW
		  elsif(end4b="0101") then
		     ID_cont<="010110";
			  OR_cont<="1110";
			  EX_cont<="100011000";
			  MEM_cont<="010";
			  WB_cont<='0';

			  --11. LM
		 elsif(end4b="0110") then
		     ID_cont<="111101";
			  OR_cont<="1110";
			  EX_cont<="100001000";
			  MEM_cont<="101";
			  WB_cont<='1';

			  --12. SM
		  elsif(end4b="0111") then
		     ID_cont<="111101";
			  OR_cont<="1110";
			  EX_cont<="100011000";
			  MEM_cont<="010";
			  WB_cont<='0';

			  --13. BEQ
		  elsif(end4b="1100") then
		     ID_cont<="100010";
			  OR_cont<="1110";
			  EX_cont<="000001100";
			  MEM_cont<="000";
			  WB_cont<='0';

			  --14. JAL
		  elsif(end4b="1000") then
		     ID_cont<="010110";
			  OR_cont<="0001";
			  EX_cont<="000010000";
			  MEM_cont<="000";
			  WB_cont<='1';

			  --15. JLR
		  elsif(end4b="1001") then
		     ID_cont<="010010";
			  OR_cont<="0100";
			  EX_cont<="110010000";  --DONT CARE HERE
			  MEM_cont<="000";
			  WB_cont<='1';
			  
			  else --to remove a latch
			  ID_cont<="010010";
			  OR_cont<="0100";
			  EX_cont<="110010000";  --DONT CARE HERE
			  MEM_cont<="000";
			  WB_cont<='0';

		 end if;
	--end if;

 end process;
end katniss;
