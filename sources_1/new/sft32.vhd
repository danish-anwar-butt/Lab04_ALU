----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/18/2021 02:50:15 PM
-- Design Name: 
-- Module Name: sft32 - Behavioral
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

entity sft32 is
    Port ( data_out     : out STD_LOGIC_VECTOR (31 downto 0);
           data_in      : in STD_LOGIC_VECTOR (31 downto 0);
           sftSz        : in std_logic_vector(4 downto 0);
           ShiftType    : in STD_LOGIC_VECTOR (1 downto 0));
end sft32;

architecture Behavioral of sft32 is
signal data_out_sft : std_logic_vector(31 downto 0);
signal data_in_sft  : std_logic_vector(31 downto 0);
signal sft_in_sft   : std_logic;

signal data_in_rev, data_out_rev : std_logic_vector(31 downto 0);

component barrelRShift is
    port (
    data_out    : out std_logic_vector(31 downto 0);
    data_in     : in std_logic_vector(31 downto 0);
    sftSz       : in std_logic_vector(4 downto 0);
    sft_in      : in std_logic
    );
end component;

component reverseBits is
    port ( reversed : out STD_LOGIC_VECTOR (31 downto 0);
           original : in STD_LOGIC_VECTOR (31 downto 0)
         );

end component;

begin
reverse_in: reverseBits
    port map ( reversed => data_in_rev,
               original => data_in
             );
reverse_out: reverseBits
    port map (  reversed => data_out_rev,
                original => data_out_sft
             );


shifter:  barrelRShift 
    port map(
    data_out    => data_out_sft,
    data_in     => data_in_sft,
    sftSz       => sftSz,
    sft_in      => sft_in_sft
    );
   
   with ShiftType select
        data_out <= data_out_rev when "10",
                    data_out_sft when others;
   
   with ShiftType select
        data_in_sft <=  data_in_rev when "10",
                        data_in     when others;
   with ShiftType select
        sft_in_sft <=  data_in_sft(31) when "01",
                       '0'             when others;                     
                    
end Behavioral;
