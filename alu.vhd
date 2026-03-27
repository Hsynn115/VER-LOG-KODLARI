library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity alu is
    port (
        a,b  : in std_logic_vector(7 downto 0);
        ALU_sel : in std_logic_vector(2 downto 0);
        NZVC : out std_logic_vector (3 downto 0);
        result : out std_logic_vector (7 downto 0)

    );
end alu;

architecture Behavioral of alu is
signal ALU_ADD : std_logic_vector(8 downto 0);-- burada mantık sonuç kısmında 9 bitlik bir sonuç çıkarsa geçici olarak sonucu 9 bit yapar
signal ALU_RESULT : std_logic_vector(7 downto 0);
signal C,Z,V,N,add_ov,sub_ov: std_logic;
begin
    process (ALU_sel,a,b)
 
    begin
 ALU_ADD <= "000000000";
 case (ALU_Sel) is
    when "000" => -- toplama işlemi 
    ALU_ADD <= ('0' & a)+('0' & b);-- işte tam burada sonuç 9 bit çıkarsa bu işlem oluyor
    ALU_RESULT <= a+b;
        when "001" => 
        ALU_RESULT <= (b-a);
        ALU_ADD <= ('0' & b)-('0' & a);
        when "010" =>
        ALU_RESULT <= a and b ;
            when "011"=>
            ALU_RESULT <= a or b;
        when "100" =>  
                ALU_Result <= A + x"01";                 
           when "101" => 
                ALU_Result <= A - x"01";       
           when others =>  
                ALU_Result <= A + B;  
      end case;
    end process;

     Result <= ALU_Result;  
      N <= ALU_Result(7);  
      Z <= '1' when ALU_Result = x"00" else  
            '0'; 
 
   add_ov<= (A(7)and B(7)    and (not ALU_Result(7))) or ((not A(7))and (not B(7)) and ALU_Result(7));  
   sub_ov<= (A(7)and (not B(7)) and (not ALU_Result(7))) or ((not A(7))and B(7)    and ALU_Result(7));   
   with ALU_Sel select  
    V    <= add_ov when "000",  
          sub_ov when "001",  
          '0' when others;  
       
   with ALU_Sel select  
    C <=  ALU_ADD(8) when "000",  
        ALU_ADD(8) when "001",  
          '0' when others;  
      NZVC <= N & Z & V & C;  
 end Behavioral;





