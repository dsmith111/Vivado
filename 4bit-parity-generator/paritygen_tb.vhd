
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity paritygen_tb is
--  Port ( );
end paritygen_tb;

architecture Behavioral of paritygen_tb is
 
    component paritygen
        generic (inputs : integer := 4;
            parity_eo : std_logic  := '0');
        port (input_bits : in std_logic_vector(inputs-1 DOWNTO 0); -- input data
           parity : out STD_LOGIC);
    end component;
    
    signal input_bits : std_logic_vector (4-1 downto 0);
    signal parity : std_logic;
    signal parity_eo : std_logic  := '0';
begin

    UUT: paritygen port map (input_bits => input_bits, parity => parity);
    
    process
    begin
        input_bits <= "0000";
        wait for 1000 ns;
        input_bits <= "0001";
        wait for 1000 ns;
        input_bits <= "0011";
        wait for 1000 ns;
        input_bits <= "0111";
        wait for 1000 ns;
        input_bits <= "1111";
        wait;
     end process;

end Behavioral;
