library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity rw_96x8_sync is
    port (
        address  : in  std_logic_vector(6 downto 0);
        data_in  : in  std_logic_vector(7 downto 0);
        write    : in  std_logic;
        clock    : in  std_logic;
        data_out : out std_logic_vector(7 downto 0)
    );
end rw_96x8_sync;

architecture Behavioral of rw_96x8_sync is
    type ram_type is array (128 to 223) of std_logic_vector(7 downto 0);
    signal RAM : ram_type := (others => x"00");
begin
    process(clock)
    begin
        if(rising_edge(clock)) then
            if(write = '1') then
                RAM(to_integer(unsigned(address)) + 128) <= data_in;
            end if;
            data_out <= RAM(to_integer(unsigned(address)) + 128);
        end if;
    end process;
end Behavioral;