--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:22:19 08/31/2016
-- Design Name:   
-- Module Name:   C:/Users/Yardie/Documents/Xilinx/testProject/xnor_2_tb.vhd
-- Project Name:  testProject
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: xnor_2
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
 
ENTITY xnor_2_tb IS
END xnor_2_tb;
 
ARCHITECTURE behavior OF xnor_2_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT xnor_2
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         x : OUT  std_logic;
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal x : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: xnor_2 PORT MAP (
          a => a,
          b => b,
          x => x,
          clk => clk
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
      wait for 10 ns;	
		a <='1';
		b <='1';
		wait for 10 ns;
		a <='0';
		b <='1';
		wait for 10 ns;
		a <='0';
		b <='0';
		wait for 10 ns;
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
