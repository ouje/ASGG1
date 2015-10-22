----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:35:29 11/09/2013 
-- Design Name: 
-- Module Name:    LFSR1 - Behavioral 
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

entity LFSR1 is
Generic(N: integer ); 
    Port ( clk   : in  STD_LOGIC;
           rst_n : in  STD_LOGIC;
           X1_out: out  STD_LOGIC);

end LFSR1;

architecture Behavioral of LFSR1 is
signal reg_pom   : std_logic_vector (N - 1 downto 0);
signal registr   : std_logic_vector (N - 1 downto 0);
signal sX1: std_logic;

begin

cyklus : process (clk, rst_n, reg_pom)
begin
       if rst_n = '1' then
    registr <= B"110010101110101101011100101011101011010111001010111010110101110010101110101101011"; -- seed
    else if clk'event and clk = '1' then
    registr <= reg_pom;
	 end if;
	end if;	
end process cyklus;

sX1 	<= registr(N - 1) xnor registr(N - 4);
reg_pom 	<= registr(N - 2 downto 0) & sX1; 
 X1_out <= registr(N - 1);

end Behavioral;

