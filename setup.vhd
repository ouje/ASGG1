----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:46:08 11/09/2013 
-- Design Name: 
-- Module Name:    XORed - Behavioral 
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
use work.ASGG_pkg.ALL;

entity XORed is
Port ( K : out  STD_LOGIC;
			  rX2 : in  STD_LOGIC;
           rX3 : in  STD_LOGIC);
end XORed;

architecture Behavioral of XORed is

begin
K <= rX2 xor rX3;
end Behavioral;

