----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:30:36 08/29/2016 
-- Design Name: 
-- Module Name:    and_4 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity and_4 is port (
	a : in std_logic;
	b : in std_logic;
	c : in std_logic;
	d : in std_logic;
	equals : out std_logic;
	clk : in std_logic);
end and_4;

architecture Behavioral of and_4 is

begin
	comp : process (clk) 
	begin 
		if rising_edge(clk) then
			equals <= (a and b and c and d);
		end if;
	end process comp;
end Behavioral;

