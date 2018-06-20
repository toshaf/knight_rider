library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity leds is
  port ( 
     clock : in std_logic
  ;  leds_out : out std_logic_vector(7 downto 0)
  );
end leds;


architecture v1 of leds is
    type setting_arr is array(integer range <>) of unsigned(7 downto 0);
    signal settings : setting_arr(7 downto 0) := (others => (others => '0'));
    signal reads : std_logic_vector := "00000000";
    -- TODO: make this a constant
    signal level : unsigned(7 downto 0) := to_unsigned(255, 8);
begin
    gen_faders: for i in 0 to 7 generate
        faders : entity work.fader(v1)
            port map(
              clock => clock
            , input => level
            , read => reads(i)
            , output => settings(i)
            );
    end generate gen_faders;

    gen_dimmers: for i in 0 to 7 generate
        dimmers : entity work.dimmer(linear)
            port map(
              clock => clock
            , output => leds_out(i)
            , setting => settings(i)
            );
    end generate gen_dimmers;
        
    process (clock)
        variable counter : integer := 0;
        variable index : integer := 0;
        variable inc : integer := 1;
    begin
            
        if rising_edge(clock) then
            if counter = 15e6 then
                counter := 0;
                reads(index) <= '0';
                if index = 7 then
                    inc := -1;
                elsif index = 0 then
                    inc := 1;
                end if;
                index := index + inc;
                reads(index) <= '1';
            else
                counter := counter + 1;
                reads(index) <= '0';
            end if;
        end if;
    end process;
end v1;
