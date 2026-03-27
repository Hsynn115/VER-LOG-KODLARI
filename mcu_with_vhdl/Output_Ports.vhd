library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Output_Ports is
    port (
        address     : in  std_logic_vector(3 downto 0);
        data_in     : in  std_logic_vector(7 downto 0);
        write       : in  std_logic;
        clock       : in  std_logic;
        reset       : in  std_logic;
        port_out_00, port_out_01, port_out_02, port_out_03,
        port_out_04, port_out_05, port_out_06, port_out_07,
        port_out_08, port_out_09, port_out_10, port_out_11,
        port_out_12, port_out_13, port_out_14, port_out_15 : out std_logic_vector(7 downto 0)
    );
end Output_Ports;

architecture Behavioral of Output_Ports is
begin
    process(clock, reset)
    begin
        if(reset = '0') then
            port_out_00 <= x"00"; -- Tüm çıkışları sıfırla... (Diğerlerini de buraya ekleyebilirsin)
        elsif(rising_edge(clock)) then
            if(write = '1') then
                case address is
                    when x"0" => port_out_00 <= data_in;
                    when x"1" => port_out_01 <= data_in;
                    -- Diğer case'leri buraya ekle...
                    when others => null;
                end case;
            end if;
        end if;
    end process;
end Behavioral;