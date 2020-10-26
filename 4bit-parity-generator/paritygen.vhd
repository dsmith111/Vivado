library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity paritygen is
    Generic(inputs : integer := 4; --Input bits
            parity_eo : std_logic  := '0'); -- even parity(0 is even)
            
    Port ( input_bits : in std_logic_vector(inputs-1 DOWNTO 0); -- input data
           parity : out STD_LOGIC); --result
end paritygen;

architecture Behavioral of paritygen is
    signal parity_calc : std_logic_vector(inputs DOWNTO 0);
begin

    parity_calc(0) <= parity_eo;
    parity_logic: for i in 0 to inputs-1 generate 
        parity_calc(i+1) <= parity_calc(i) XOR input_bits(i);
    end generate parity_logic;
parity <= parity_calc(inputs);

end Behavioral;

