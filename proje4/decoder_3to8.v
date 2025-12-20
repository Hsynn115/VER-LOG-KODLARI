
module decoder_3to8 
// burada girdiler ve çıktılar belirlendi    
(input [2:0] a,
     input enable,
     output reg [7:0] y
    );
 
    
    always @(a or enable) begin  
       // eğer enabele 0'a eşit ise y çıktısı 0 olsun 
        if (enable == 0)
           y = 8'b0;
        else begin
            case (a)   // burada kaydırma yapılmadan bütün değerler verilmiştir
                3'b000 : y = 8'b00000001;
                3'b001 : y = 8'b00000010;
                3'b010 : y = 8'b00000100;
                3'b011 : y = 8'b00001000;
                3'b100 : y = 8'b00010000;
                3'b101 : y = 8'b00100000;
                3'b110 : y = 8'b01000000;
                3'b111 : y = 8'b10000000;
                
                default : y = 8'b00000000;
            endcase
        end
    end
  
endmodule
