----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2021 05:08:11 PM
-- Design Name: 
-- Module Name: mux_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_tb is
end mux_tb;

architecture Behavioral of mux_tb is
    signal x,y, sel: std_logic;
    signal output: std_logic;
    
    component mux2x1 is
        port(
            output : out std_logic;
            sel    : in  std_logic;
            in1    : in  std_logic;
            in2    : in  std_logic
        );
    end component;

begin
    
    mux: mux2x1
        port map(
            output => output,
            sel => sel,
            in1 => x,
            in2 => y
        );
    testing: process
    begin
         x <= '0'; 
         y <= '1'; 
         sel <= '0';
         wait for 20 ns;
         sel <= '1';
          wait;
    end process;

end Behavioral;
