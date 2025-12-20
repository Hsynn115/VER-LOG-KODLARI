

module hex_7seg_decoder(
    input  [3:0]in,
    output reg a,
	output reg b,
    output reg c,
    output reg d,
    output reg e,
    output reg f,
    output reg g,
    output dot
    );
	
	
	always @(*) begin
		case (in)
		4'd0 : {a,b,c,d,e,f,g} = 7'b1111110;  // gösterilen değer =0
		4'd1 : {a,b,c,d,e,f,g} = 7'b0110000;  // gösterilen değer =1
		4'd2 : {a,b,c,d,e,f,g} = 7'b1101101;  // gösterilen değer =2
		4'd3 : {a,b,c,d,e,f,g} = 7'b1111001;  // gösterilen değer =3
		4'd4 : {a,b,c,d,e,f,g} = 7'b0110011;  // gösterilen değer =4
		4'd5 : {a,b,c,d,e,f,g} = 7'b1011011;  // gösterilen değer =5
		4'd6 : {a,b,c,d,e,f,g} = 7'b1011111;  // gösterilen değer =6
		4'd7 : {a,b,c,d,e,f,g} = 7'b1110000;  // gösterilen değer =7
		4'd8 : {a,b,c,d,e,f,g} = 7'b1111111;  // gösterilen değer =8
		4'd9 : {a,b,c,d,e,f,g} = 7'b1111011;  // gösterilen değer =9
		4'd10: {a,b,c,d,e,f,g} = 7'b1110111;  // gösterilen değer =10 
		4'd11: {a,b,c,d,e,f,g} = 7'b0011111;  // gösterilen değer =11
		4'd12: {a,b,c,d,e,f,g} = 7'b1001110;  // gösterilen değer =12
		4'd13: {a,b,c,d,e,f,g} = 7'b0111101;  // gösterilen değer =13
		4'd14: {a,b,c,d,e,f,g} = 7'b1001111;  // gösterilen değer =14
		4'd15: {a,b,c,d,e,f,g} = 7'b1000111;  // gösterilen değer =15
	    endcase
    end
	
    
    assign dot = 1'b1;

endmodule