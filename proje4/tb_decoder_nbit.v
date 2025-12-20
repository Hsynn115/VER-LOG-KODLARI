`timescale 1us/1ns
module tb_decoder_nbit();
	// 
    parameter DEC_WIDTH = 3;
    reg [DEC_WIDTH-1:0] a;
    reg  enable ;
    wire  [2**DEC_WIDTH-1:0] y;// çıkış bit genişiliği için deccoder özelliği kullanıldı
	
	integer i; // for döngüsün için 
	
    // ana modülde decoder_nbit çağrıldı
    decoder_nbit 
    #(.N(DEC_WIDTH))
    DEC1
    (
      .a(a),
      .enable(enable),
      .y(y)
    );
  
    
    initial begin
        $monitor($time, " a = %d, enable = %b, y = %b", a, enable, y);
        #1; a = 0; enable = 0;
        // bu döngü a' parametre boyutuna göre bir bir arttırıp çıkışları buluyor  
        for (i = 0; i<2**DEC_WIDTH; i=i+1) begin
            #1; a = i; enable = 1;
        end
    end
  
endmodule
