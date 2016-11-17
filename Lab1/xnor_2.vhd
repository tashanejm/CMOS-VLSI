----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:30:14 08/29/2016 
-- Design Name: 
-- Module Name:    xnor_2 - Behavioral 
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

entity xnor_2 is port (
	a : in std_logic;
	b : in std_logic;
	x : out std_logic;
	clk : in std_logic); 
end xnor_2;

architecture Behavioral of xnor_2 is

begin
	comp : process (clk)
	begin
		if rising_edge(clk) then
			--x <= not(a xor b);
			x <= (a xnor b);
		end if;
	end process comp;

end Behavioral;

