-- Bryan Angamarca
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Ejer_7 is
    Port ( clk, reset : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (2 downto 0));
end Ejer_7;

architecture Behavioral of Ejer_7 is
signal Qaux :  STD_LOGIC_VECTOR (2 downto 0);
begin
	Q <= Qaux;
	process(clk, reset)
	begin
		if (clk'event and clk = '1') then
			if (reset = '0' or Qaux = "111") then
				Qaux <= "000";
			else
				Qaux <= Qaux+1;
			end if;
		end if;
	end process;
end Behavioral;

