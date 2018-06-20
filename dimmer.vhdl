library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dimmer is
	port (
		clock : in std_logic;
		setting : in unsigned(7 downto 0);
		output : out std_logic
	);
end dimmer;

architecture linear of dimmer is
begin
	process (clock)
        variable counter : unsigned(7 downto 0) := to_unsigned(0, 8);
	begin
        if rising_edge(clock) then
            if counter < setting then
                output <= '1';
            else
                output <= '0';
            end if;
            counter := counter + 1;
		end if;
	end process;
end linear;
