
module decoder_4to16 
  (input [3:0] a,
   output[15:0] d
  );
 // burada iki tane 3 to 8 birbirne bağlanarak 4 to 16 üretilimştir
    decoder_3to8 DEC1 (
        .a(a[2:0]),// a değeri 3 bit ( alt üç biti temsil eder)
        .enable(~a[3]),//  en üst biti temsil eder(ama değilini eğer 0 ise değili ile 1 olur ve alt bitler çalışır ve dec1 aktif olur)
        .y(d[7:0])
    );
  
    decoder_3to8 DEC2 (
        .a(a[2:0]),// alt bitleri temsil eder
        .enable(a[3]), // aktif üst biti temsil eder
        .y(d[15:8])// bunlarda 8 -16 bit değerlerini çalıştırır(dec2)
    );
  
endmodule