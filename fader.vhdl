library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fader is
    port(
      clock : in std_logic
    ; read : in std_logic
    ; input : in unsigned(7 downto 0)
    ; output : out unsigned(7 downto 0)
    );
end fader;

architecture v1 of fader is
begin
    process (clock)
        variable value : unsigned(7 downto 0) := to_unsigned(0, 8);
        variable counter : integer := 0;
    begin
        if rising_edge(clock) then
            if read = '1' then
                value := input;
            end if;
            
            if counter = 2e5 then
                if value > 0 then
                    value := value - 1;
                end if;
                counter := 0;
            else
                counter := counter + 1;
            end if;
            
            output <= value;
        end if;
    end process;
end v1;