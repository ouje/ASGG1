----------------------------------------------------------------------------------
-- Company: 
-- Engineer: xoujez03
-- 
-- Create Date:    13:43:24 11/09/2013 
-- Design Name: 
-- Module Name:    LFSR3 - Behavioral 
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

entity LFSR3 is
Generic(N: integer);
    Port ( clk 	: in STD_LOGIC;
			  clk_X1 : in  STD_LOGIC;
           rst_n : in  STD_LOGIC;
			  X3_out : out  STD_LOGIC);
end LFSR3;

architecture Behavioral of LFSR3 is
signal reg_pom   : std_logic_vector (N - 1 downto 0);
signal registr   : std_logic_vector (N - 1 downto 0);
signal sX3: std_logic;

begin

registr_rol : process (clk_X1, rst_n, reg_pom)
begin
       if rst_n = '1' then
    registr <= B"100011101011010"; -- seed
    else if clk_X1'event and clk_X1 = '0' then
		registr <= reg_pom;
	 end if;
	end if;	
end process;

registr_p : process(clk)
begin
if clk'event and clk = '1' then
sX3 	<= registr(N - 1) xnor registr(N - 2);
reg_pom 	<= registr(N - 2 downto 0) & sX3; 
end if;
end process;

X3_out 	<= registr(N - 1);

end Behavioral;

