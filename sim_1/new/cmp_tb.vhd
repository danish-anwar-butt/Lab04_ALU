----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/19/2021 09:56:46 PM
-- Design Name: 
-- Module Name: cmp_tb - Structural
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

entity cmp_tb is
--  Port ( );
end cmp_tb;

architecture Structural of cmp_tb is
signal eq_in   : std_logic;
signal lt_in   : std_logic;
signal a       : std_logic;
signal b       : std_logic;
signal eq_out  : std_logic;
signal lt_out  : std_logic;

component cmp is
    port(
    eq_in   : in std_logic;
    lt_in   : in std_logic;
    a       : in std_logic;
    b       : in std_logic;
    eq_out  : out std_logic;
    lt_out  : out std_logic
    );
end component;
begin

uut: cmp
    port map(
    eq_in => eq_in,
    lt_in => lt_in,
    a     => a,
    b     => b,
    eq_out => eq_out ,
    lt_out => lt_out
    );
testing: process 
begin
    lt_in <= '0'; eq_in <= '0'; a <= '0'; b <= '0';
    wait for 10 ns;
    lt_in <= '0'; eq_in <= '0'; a <= '0'; b <= '1';
    wait for 10 ns;
    lt_in <= '0'; eq_in <= '0'; a <= '1'; b <= '0';
    wait for 10 ns;
    lt_in <= '0'; eq_in <= '0'; a <= '1'; b <= '1';
    wait for 10 ns;
    lt_in <= '0'; eq_in <= '1'; a <= '0'; b <= '0';
    wait for 10 ns;
    lt_in <= '0'; eq_in <= '1'; a <= '0'; b <= '1';
    wait for 10 ns;
    lt_in <= '0'; eq_in <= '1'; a <= '1'; b <= '0';
    wait for 10 ns;
    lt_in <= '0'; eq_in <= '1'; a <= '1'; b <= '1';
    wait for 10 ns;
    lt_in <= '1'; eq_in <= '0'; a <= '0'; b <= '0';
    wait for 10 ns;
    lt_in <= '1'; eq_in <= '0'; a <= '0'; b <= '1';
    wait for 10 ns;
    lt_in <= '1'; eq_in <= '0'; a <= '1'; b <= '0';
    wait for 10 ns;
    lt_in <= '1'; eq_in <= '0'; a <= '1'; b <= '1';
    wait for 10 ns;
    lt_in <= '1'; eq_in <= '1'; a <= '0'; b <= '0';
    wait for 10 ns;
    lt_in <= '1'; eq_in <= '1'; a <= '0'; b <= '1';
    wait for 10 ns;
    lt_in <= '1'; eq_in <= '1'; a <= '1'; b <= '0';
    wait for 10 ns;
    lt_in <= '1'; eq_in <= '1'; a <= '1'; b <= '1';
    wait;
end process;
end Structural;
