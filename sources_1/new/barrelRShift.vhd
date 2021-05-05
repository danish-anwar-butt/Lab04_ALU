library ieee;
use ieee.std_logic_1164.all;

entity barrelRShift is
    port (
    data_out    : out std_logic_vector(31 downto 0);
    data_in     : in std_logic_vector(31 downto 0);
    sftSz       : in std_logic_vector(4 downto 0);
    sft_in      : in std_logic
    );
end barrelRShift;

architecture structural of barrelRShift is
signal r1, r2, r3, r4 : std_logic_vector(31 downto 0);             
              
begin
    r4 <= data_in when (sftSz(4) = '0') else
          (31 downto 16 => sft_in) & data_in(31 downto 16);
          
    r3 <= r4 when (sftSz(3) = '0') else
          (31 downto 24 => sft_in) & r4(31 downto 8);
          
    r2 <= r3 when (sftSz(2) = '0') else
          (31 downto 28 => sft_in) & r3(31 downto 4);
    
    r1 <= r2 when (sftSz(1) = '0') else
          (31 downto 30 => sft_in) & r2(31 downto 2); 
    
    data_out <= r1 when (sftSz(0) = '0') else 
          (sft_in & r1(31 downto 1));

end structural;