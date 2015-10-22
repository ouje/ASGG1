--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:58:39 11/09/2013
-- Design Name:   
-- Module Name:   C:/Users/xoujez03/ASGG/test.vhd
-- Project Name:  ASGG
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ASGG
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
use ieee.std_logic_textio.all;
use std.textio.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ASGG
    PORT(
         Keystr : OUT  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '1';

 	--Outputs
   signal Keystr : std_logic;

   -- Clock period definitions
   constant clk_period : time := 5 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ASGG PORT MAP (
          Keystr => Keystr,
          clk => clk,
          reset => reset
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period;
		clk <= '1';
		wait for clk_period;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
		reset <= '0';
      wait;

      -- insert stimulus here 

      end process;
		
writing :
process
    file outfile  : text is out "ASGG_test.txt";  
    variable  L  : line;
begin
wait until clk'event and clk = '1' ;
--for a in 0 to 7 loop
write( L, Keystr );
--write( L, string'(" ") );
--end loop;
writeline(outfile, L);
end process writing;



--process (reset, clk, Keystr)
 --        variable wrbuf :line;
 --    begin
     --    write(wrbuf, string'("Time: "     )); write(wrbuf, now);
     --    write(wrbuf, string'(" K: "  )); write(wrbuf, Keystr);
     --    writeline(output, wrbuf);
   -- end process;



END;
