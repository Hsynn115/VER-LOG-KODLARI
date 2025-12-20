module procedurs();
// girişler ve çıktılar atandı 
reg [7:0] a;
reg [7:0] b;
wire [8:0] sum;     // overflowu önlemek için geniş tutuldu
reg [15:0] product;
// a'nın ve b'nin değişmesi sum'nda değişmesini sağlar 
assign sum = a+b;
// sürekli çalışacak kod bloğu ataması
always @(a or b) begin
product =a * b;
end

// a'yı tetikler
always @(a) begin

 $display($time, " MON_VAR1: a = %0d", a);
end
// tüm bağımlı değişkenler değiştiğinde çalışır 
always @(*) begin
    
    $display($time, " MON_ALL: a = %0d, b  = %0d, sum = %0d, product = %0d", 
		         a, b, sum, product);
end
// ana kod başlangıcı burada değer atamsı yapıldı
initial begin
    #1; a=10; b=99;
     #1; b=33;
      #1; a = b<<2;
       #1; b= b>>3;
        #1; b= b+1;
end 
endmodule