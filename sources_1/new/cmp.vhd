library ieee;
use ieee.std_logic_1164.all;

entity cmp is
    port(
    eq_in   : in std_logic;
    lt_in   : in std_logic;
    a       : in std_logic;
    b       : in std_logic;
    eq_out  : out std_logic;
    lt_out  : out std_logic
    );
end cmp;

architecture dataflow of cmp is
signal a_n  : std_logic;

begin
    a_n <=  not a;
    
    eq_out <= eq_in and (a xnor b);
    lt_out  <= lt_in or (a_n and b);
    
end dataflow;