module decoder_nbit 
    // burada yine parametre atandı 
    #( parameter N = 3)
// giriş ve çıkış sinyalleri atandı
    (input [N-1:0] a,
     input enable,
     output reg [2**N-1:0] y // decoder ile 3 to 8 çıkısı için 2**N değişekini atandı
    );
  
    always @(*) begin
        if (enable == 0) 
            y = 0;
        else
            y = (1 << a);
            // burası önemli çünkü istenilen çıkış 1'in a defa kaydırılması sonucu oluşur(testbenc kısmdında daha detaylı açıkladım)
    end  
  
endmodule