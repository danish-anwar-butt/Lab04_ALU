----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/18/2021 02:22:00 PM
-- Design Name: 
-- Module Name: reverseBits - dataflow
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

entity reverseBits is
    Port ( reversed : out STD_LOGIC_VECTOR (31 downto 0);
           original : in STD_LOGIC_VECTOR (31 downto 0));
end reverseBits;

architecture dataflow of reverseBits is
begin
    reversed(31) <= original(0);
    reversed(30) <= original(1);
    reversed(29) <= original(2);
    reversed(28) <= original(3);
    reversed(27) <= original(4);
    reversed(26) <= original(5);
    reversed(25) <= original(6);
    reversed(24) <= original(7);
    reversed(23) <= original(8);
    reversed(22) <= original(9);
    reversed(21) <= original(10);
    reversed(20) <= original(11);
    reversed(19) <= original(12);
    reversed(18) <= original(13);
    reversed(17) <= original(14);
    reversed(16) <= original(15);
    reversed(15) <= original(16);
    reversed(14) <= original(17);
    reversed(13) <= original(18);
    reversed(12) <= original(19);
    reversed(11) <= original(20);
    reversed(10) <= original(21);
    reversed(9)  <= original(22);
    reversed(8)  <= original(23);
    reversed(7)  <= original(24);
    reversed(6)  <= original(25);
    reversed(5)  <= original(26);
    reversed(4)  <= original(27);
    reversed(3)  <= original(28);
    reversed(2)  <= original(29);
    reversed(1)  <= original(30);
    reversed(0)  <= original(31);
end dataflow;
