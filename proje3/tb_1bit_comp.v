/*module tb_1bit_comp (

);
reg a;
reg b;
wire smaller,equal,greater;
 
bit_comparotor  BİT1(
.a(a),
.b(b),
.smaller(smaller),
.equal(equal),
.greater(greater)
);

    initial begin
       $monitor(" a = %b, b = %b, smaller = %b, equal = %b, greater=%b",a, b, smaller, equal,greater);
       #1; a = 0; b = 0; 
       #1; a = 1; b = 0; 
       #1; a = 1; b = 0; 
       #1; a = 0; b = 1; 
       #1; a = 1; b = 1;      
       #5; $stop;
    end

endmodule
*/

module tb_comp(
    // no inputs here ;)
    );
	
    reg a, b;
    wire smaller, greater, equal;
	
    // Instantiate the DUT
    bit_comparotor CMP1(
      .a(a),
      .b(b),
      .smaller(smaller),
      .equal(equal),
      .greater(greater)
    );
   
    initial begin
       $monitor(" a = %b, b = %b, smaller = %b, equal = %b, greater = %b",
				  a, b, smaller, equal, greater);
       #1; a = 0; b = 0;
       #1; a = 1; b = 0;
       #1; a = 1; b = 0;
       #1; a = 0; b = 1;
       #1; a = 1; b = 1;      
       #1; $stop;
    end
  
endmodule