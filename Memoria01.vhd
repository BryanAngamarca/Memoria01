----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:00:11 07/01/2022 
-- Design Name: 
-- Module Name:    Memoria01 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Memoria01 is
    Port ( clk : in  STD_LOGIC;
           en : in  STD_LOGIC;
           we : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           addr : in  STD_LOGIC_VECTOR (9 downto 0);
           di : in  STD_LOGIC_VECTOR (15 downto 0);
		  do : out  STD_LOGIC_VECTOR (15 downto 0)); 
end Memoria01;

architecture Behavioral of Memoria01 is
	type ram_type is array (1023 downto 0)
	of std_logic_vector(15 downto 0);
	signal ram : ram_type;
begin
	process(clk)
begin 
	if clk'event and clk = '1' then
	if en= '1' then -- optional enable
	if we = '1' then -- write enable
	ram(conv_integer(addr)) <= di;
	end if;
	if rst = '1' then -- optional reset
	do <= (others => '0');
	else
	do <= ram(conv_integer(addr));
	end if;
	end if;
	end if;
	end process;

end Behavioral;

