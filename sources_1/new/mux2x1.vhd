library ieee;
use ieee.std_logic_1164.all;

entity mux2x1 is
    port(
        output : out std_logic;
        sel    : in  std_logic;
        in1    : in  std_logic;
        in2    : in  std_logic
    );
end mux2x1;

architecture gate_level of mux2x1 is
signal sel_n : std_logic;
signal and1_out: std_logic;
signal and2_out: std_logic;

begin
--    sel_n <= not sel;
--    and1_out <= in1 and sel_n;
--    and2_out <= in2 and sel;
--    output <= and1_out or and2_out;
    output <= in2 when sel = '1' else
              in1;    
        
end gate_level;