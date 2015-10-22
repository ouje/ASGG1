----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:48:14 11/09/2013 
-- Design Name: 
-- Module Name:    ASGG - Behavioral 
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

entity ASGG is
 Port ( Keystr : out  STD_LOGIC;
			  clk : in  STD_LOGIC;
           reset : in  STD_LOGIC);
end ASGG;

architecture Behavioral of ASGG is
signal iX1, iX2, iX3 : std_logic;
begin

iLFSR1 : LFSR1
port map(
       clk => clk,
       X1_out => iX1,
       rst_n => reset
  );

iLFSR2 : LFSR2
port map(
       clk => clk,
       clk_X1 => iX1,
       X2_out => iX2,
       rst_n => reset
  );
  
iLFSR3 : LFSR3
port map(
       clk => clk,
       clk_X1 => iX1,
       X3_out => iX3,
       rst_n => reset
  );

iXORed : XORed
port map(
       K => Keystr,
		 rX2 => iX2,
		 rX3 => iX3
  );

end Behavioral;

