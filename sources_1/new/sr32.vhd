LIBRARY ieee;
use ieee.std_logic_1164.all;

entity sr32 is
    port (
        data_out    : out std_logic_vector(31 downto 0);
        data_in     : in std_logic_vector(31 downto 0);
        sftSz       : in std_logic_vector(4 downto 0);
        arith       : in std_logic
        );
end sr32;

architecture struct of sr32 is
signal sft_in_val: std_logic;

component barrelRShift is
    port (
    data_out    : out std_logic_vector(31 downto 0);
    data_in     : in std_logic_vector(31 downto 0);
    sftSz       : in std_logic_vector(4 downto 0);
    sft_in      : in std_logic
    );
end component;
begin

sft_in_val <= '0' when (arith = '0') else data_in(31);

barrelRSft: barrelRShift
    port map (
    data_out => data_out,
    data_in => data_in,
    sftSz   => sftSz,
    sft_in  => sft_in_val
    );
      
end struct;

