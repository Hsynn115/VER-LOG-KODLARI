
module adder_nbit 
    // verilen parametre değeri kodun dinamikliğini sağlıyor 
    #( parameter N = 3)
    // verelin değere göre bit atamalrı yapılıyor(3-bit)
    (input [N-1:0] a,
     input [N-1:0] b,
     output reg [N:0] sum);
    
    // hassasiyet listesi
 
    always @(*) begin
       sum[N:0] = a[N-1:0] + b[N-1:0];
       //sum = a + b;// yukarıdaki ile aynı işlemi görür
    end  
  
endmodule