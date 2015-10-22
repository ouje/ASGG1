----------------------------------------------------------------------------------
-- Company: 
-- Engineer: xoujez03
-- 
-- Create Date:    13:40:21 11/09/2013 
-- Design Name: 
-- Module Name:    LFSR2 - Behavioral 
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

entity LFSR2 is
Generic(N: integer ); 
    Port ( clk		: in STD_LOGIC;
			  clk_X1 : in STD_LOGIC;
           rst_n : in  STD_LOGIC;
			  --set		: out STD_LOGIC;
           X2_out: out  STD_LOGIC);

end LFSR2;

architecture Behavioral of LFSR2 is
signal reg_pom   : std_logic_vector (N - 1 downto 0);
signal registr   : std_logic_vector (N - 1 downto 0);
signal sX2: std_logic;
begin

registr_rol : process (clk_X1, rst_n, reg_pom)
begin
       if rst_n = '1' then
    registr <=B"10101110111010111011101011101110101"; -- seed
			else if clk_X1'event and clk_X1 = '1' then
    registr <= reg_pom;
	  end if;
	end if;	
end process;

registr_p : process(clk)
begin
if clk'event and clk = '1' then
sX2 	<= registr(N - 1) xnor registr(N - 3);
reg_pom 	<= registr(N - 2 downto 0) & sX2; 
end if;
end process;

X2_out <= registr(N - 1);

end Behavioral;

