--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:44:13 07/01/2022
-- Design Name:   
-- Module Name:   C:/Xilinx/BA/Memoria001.vhd
-- Project Name:  BA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Memoria01
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Memoria001 IS
END Memoria001;
 
ARCHITECTURE behavior OF Memoria001 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Memoria01
    PORT(
         clk : IN  std_logic;
         en : IN  std_logic;
         we : IN  std_logic;
         rst : IN  std_logic;
         addr : IN  std_logic_vector(9 downto 0);
         di : IN  std_logic_vector(15 downto 0);
         do : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal en : std_logic := '0';
   signal we : std_logic := '0';
   signal rst : std_logic := '0';
   signal addr : std_logic_vector(9 downto 0) := (others => '0');
   signal di : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal do : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Memoria01 PORT MAP (
          clk => clk,
          en => en,
          we => we,
          rst => rst,
          addr => addr,
          di => di,
          do => do
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
