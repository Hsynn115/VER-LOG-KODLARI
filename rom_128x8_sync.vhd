 library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity rom_128x8_sync is
    port (
        address  : in  std_logic_vector(6 downto 0);
        clock    : in  std_logic;
        data_out : out std_logic_vector(7 downto 0)
    );
end rom_128x8_sync;

architecture Behavioral of rom_128x8_sync is
    type rom_type is array (0 to 127) of std_logic_vector(7 downto 0);
    constant ROM : rom_type := (
        0 => x"86", -- LDA_IMM (A'ya yükle)
        1 => x"0A", -- 10 sayısını (A=10)
        2 => x"88", -- LDB_IMM (B'ye yükle)
        3 => x"05", -- 5 sayısını (B=5)
        4 => x"42", -- ADD_AB (A=A+B) -> Sonuç 15 (x0F) olmalı
        others => x"00"
    );
begin
    process(clock)
    begin
        if(rising_edge(clock)) then
            data_out <= ROM(to_integer(unsigned(address)));
        end if;
    end process;
end Behavioral;