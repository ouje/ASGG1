--	Package ASGG_pkg.vhd


library IEEE;
use IEEE.STD_LOGIC_1164.all;

package ASGG_pkg is

component LFSR1
generic( N : integer := 81);
port (
clk		: in std_logic;
rst_n	: in std_logic;
X1_out	: out std_logic
);
end component;

component LFSR2
generic( N 	: integer := 35);
port (
clk	: in std_logic;
clk_X1 : in std_logic;
rst_n	: in std_logic;
X2_out	: out std_logic
);
end component;

component LFSR3
generic( N : integer := 15);
port (
clk		: in std_logic;
clk_X1	: in std_logic;
rst_n	: in std_logic;
X3_out	: out std_logic
);
end component;

component XORed
port ( 
K : out  STD_LOGIC;
rX2 : in  STD_LOGIC;
rX3 : in  STD_LOGIC);
end component;

end ASGG_pkg;



