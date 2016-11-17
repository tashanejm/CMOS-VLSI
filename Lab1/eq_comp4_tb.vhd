--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:09:41 08/31/2016
-- Design Name:   
-- Module Name:   C:/Users/Yardie/Documents/Xilinx/testProject/eq_comp4_tb.vhd
-- Project Name:  testProject
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: eq_comp4
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
 
ENTITY eq_comp4_tb IS
END eq_comp4_tb;
 
ARCHITECTURE behavior OF eq_comp4_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT eq_comp4
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         clk : IN  std_logic;
         equals : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal equals : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: eq_comp4 PORT MAP (
          a => a,
          b => b,
          clk => clk,
          equals => equals
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

		a <= "1111";
		b <= "1000";
		
		wait for 100 ns;

		a <= "1100";
		b <= "1010";
		
		wait for 100 ns;

		a <= "0101";
		b <= "0101";
      wait for clk_period*10; 

      -- insert stimulus here 

      wait;
   end process;

END;
