----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:15:28 08/29/2016 
-- Design Name: 
-- Module Name:    eq_comp44 - Behavioral 
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

entity eq_comp4 is
port(
	a : in std_logic_vector(3 downto 0);
	b : in std_logic_vector(3 downto 0);
	clk: in std_logic;
	equals : out std_logic);
end eq_comp4;


architecture behavioral of eq_comp4 is
signal x : std_logic_vector(3 downto 0);

component xnor_2 is 
port (
	a : in std_logic;
	b : in std_logic;
	x : out std_logic;
	clk : in std_logic); 
end component xnor_2;

component and_4 is port (
	a : in std_logic;
	b : in std_logic;
	c : in std_logic;
	d : in std_logic;
	equals : out std_logic;
	clk : in std_logic);
end component and_4;

begin 	
	u0:  xnor_2 port map (a(0), b(0), x(0), clk);
	u1:  xnor_2 port map (a(1), b(1), x(1), clk);
	u2:  xnor_2 port map (a(2), b(2), x(2), clk);
	u3:  xnor_2 port map (a(3), b(3), x(3), clk);
	u4:  and_4 port map (x(0), x(1), x(2), x(3), equals, clk);

end behavioral;

