----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2021 10:12:55 PM
-- Design Name: 
-- Module Name: barrelRShift_tb - Behavioral
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

entity barrelRShift_tb is
end barrelRShift_tb;

architecture Behavioral of barrelRShift_tb is

signal data_out_tb    : std_logic_vector(31 downto 0);
signal data_in_tb     : std_logic_vector(31 downto 0);
signal sftSz_tb       : std_logic_vector(4 downto 0);
signal ShiftType       : std_logic_vector(1 downto 0);
signal arith_tb       : std_logic;

--component sr32 is
--    port (
--    data_out    : out std_logic_vector(31 downto 0);
--    data_in     : in std_logic_vector(31 downto 0);
--    sftSz       : in std_logic_vector(4 downto 0);
--    arith       : in std_logic
--    );
--end component;

--- testing left shift
--component sll32 is
--    port (
--    data_out    : out std_logic_vector(31 downto 0);
--    data_in     : in std_logic_vector(31 downto 0);
--    sftSz       : in std_logic_vector(4 downto 0)
--    );
--end component;

---  testing general 32 bit shifter
component sft32 is
    port (
    data_out    : out std_logic_vector(31 downto 0);
    data_in     : in std_logic_vector(31 downto 0);
    sftSz       : in std_logic_vector(4 downto 0);
    ShiftType    : in std_logic_vector(1 downto 0)
    );
end component;

begin
gsft: sft32
    port map  (
   data_out => data_out_tb ,
   data_in  => data_in_tb, 
   sftSz    => sftSz_tb,
   ShiftType => ShiftType
   );
testing: process
   begin
--        data_in_tb <= x"00000000"; 
--        arith_tb <= '0';
--        sftSz_tb <= b"00000";
--        wait for 100 ns;
   
--        data_in_tb <= x"F0F0F0F0"; 
--        arith_tb <= '1';
--        sftSz_tb <= b"10000";
--        wait for 100 ns;
    
--        data_in_tb <= x"F0F0F0F0"; 
--        arith_tb <= '0';
--        sftSz_tb <= b"10000";
        
        data_in_tb <= x"00000000";
        sftSz_tb <= b"00000";
        wait for 100 ns;
   
        data_in_tb <= x"F0F0F0F0"; 
        ShiftType <= "00";
        sftSz_tb <= b"10000";
        wait for 100 ns;
        
        data_in_tb <= x"F0F0F0F0"; 
        ShiftType <= "01";
        sftSz_tb <= b"10000";
        wait for 100 ns;
        
        data_in_tb <= x"F0F0F0F0"; 
        ShiftType <= "10";
        sftSz_tb <= b"10000";
        wait;
           
   end process;

end Behavioral;
