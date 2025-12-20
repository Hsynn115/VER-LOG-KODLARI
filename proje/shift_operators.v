// Kodda görülüdüğü gibi bitlerin kaydırma operatörleri ile kaydırma işlemi yapılıyor

module shift_opr();

reg [11:0] a = 12'b0101_1010_1101;
reg [11:0] b ;


initial begin
    $monitor ("MON a = %12b, b = %12b, a = %0b, b = %0b", a, b, a, b); // ilk 12 bitlik yazdırır sonra başındaki 0ları atar
end

initial begin
    
    b = a << 1; // a bir bit kaydırılıp b'ye atandı
    #1; // bekleme
    b = 0; // b=12'b0000_0000_0000
    #1;
    b = a*2; // 
    #1; b = a<<5; // 5 bit sola kaydırlıdı
    #1; b = a>>2;   
    #1; b = a>>7;
    #1; b = a<<1;
    #1; b = (a<<1)>>6;

end
endmodule