module kaynak4_udemykode();


reg [7:0] a = 0; // bunlarda da ne kadar bit olduğunu gösteriyor
reg [6:0] b = 0;
reg [7:0] d = 0;


wire [1:0]  c;


    assign c[1:0] = a[3:2];// bu kısım anın her 3. ve 2. bitleri cye atanır 
    // örn: a= 10010101  c artık şu olur; c=2'b10 

    initial begin 
        $monitor ("PROC2 a=%b,b=%b,c=%b,d=%b",a,b,c,d);// burada monitorda yazılanları atamak için bunu kullanırsın
    end
    initial begin 
        //atanamıs a değerleri bunlar oluyor (bunun içerisindeki değerler aynı zamandac değerlerinide değiştirir)
        #1 a = 1;// 8 bitlik olduğu için bunun değer aslında 00000001 olur aşşağıdakinide 8 bite tamamla
        #1 a = 8'b1111_0101; 
        #1 a = 8'b1111_1000; 
        #1 a = 8'b0000_1000; 
        #1 a = 8'b0; 

           #1 b = 7'b111_1111;
           #1 d[3:0] = a[3:0];// burada da yukarıdaki gibi adaki leri dye atıyor
           #1 d[7:0] = b[6:3];


           #1 a = 8'b0000_1110;
           #1 d = {a[3:0], b[3:0]};// burası bit yapıştırma kısmıdır yani bnin 4 biti ile anın 4 biti birleştirilir ve oda dye atanır
           #1 d = {b[3:0], a[7:4]};
    end
endmodule