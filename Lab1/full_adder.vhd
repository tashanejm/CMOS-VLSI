----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:46:10 08/28/2016 
-- Design Name: 
-- Module Name:    full_adder - Behavioral 
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

entity full_adder is
port(a : in std_logic;
	  b : in std_logic;
	  ci : in std_logic;
	  sum : out std_logic;
	  co : out std_logic;
	  clk :in std_logic);
end full_adder;

architecture bool of full_adder is
signal s1, s2, s3 : std_ulogic;
begin

	u0 : s1<= (a xor b);
	u1 : s2<= (ci and s1);
	u2 : s3<= (a and b);
	u3 : sum<=(s1 xor ci);
	u4 : co<= (s2 or s3);

end bool;

