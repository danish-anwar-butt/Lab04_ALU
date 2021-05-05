LIBRARY ieee;
use ieee.std_logic_1164.all;

entity sll32 is
    port(
        data_out : out std_logic_vector(31 downto 0);
        data_in  : in std_logic_vector(31 downto 0);
        sftSz    : in std_logic_vector(4 downto 0)
    );
end sll32;

architecture struct of sll32 is
signal data_in_rev, data_out_rev : std_logic_vector(31 downto 0);

component reverseBits is
    port ( reversed : out STD_LOGIC_VECTOR (31 downto 0);
           original : in STD_LOGIC_VECTOR (31 downto 0)
         );
end component;

component barrelRShift is
    port (
    data_out    : out std_logic_vector(31 downto 0);
    data_in     : in std_logic_vector(31 downto 0);
    sftSz       : in std_logic_vector(4 downto 0);
    sft_in      : in std_logic
    );
end component;

begin
    reverse1: reverseBits
        port map ( reversed => data_in_rev,
                   original => data_in
                 );
     shifting: barrelRShift
         port map(
         data_out   => data_out_rev,
         data_in    => data_in_rev,
         sftSz      => sftSz,
         sft_in     => '0' 
         );
     
     reverse2: reverseBits
         port map ( reversed => data_out,
                    original => data_out_rev
                  );
end struct;