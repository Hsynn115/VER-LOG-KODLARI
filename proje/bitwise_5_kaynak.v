// aslında bu kodun mantığı and or nand xor gibi oparatörler ile nasıl işlem yapılır ona bakıyoruz 
module bitwise_operators(
    // no inputs here 
    );
	   // burada yine size belirliyorsun 
  	reg [5:0] x = 0;        // 6bit variable
 	reg [5:0] y = 0;        // 6bit variable
    reg [5:0] result = 0;   // 6bit variable
	

	initial begin
      $monitor("MON x=%b, y=%b, result=%b", x, y, result);
	end
	
	
  // burada da kod başlıyor artık 
	initial begin
    // görüğün gibi bu and ve nand oporatörleridir, diğerleride aynı onlara bakarsın
        #1;  
        x = 6'b00_0101;
	    y = 6'b11_0001;
        result = x & y; // AND
       
        #1;  
        result = ~(x & y); // NAND Try: x ~& y to see what happens
	    
        #1;
        x = 6'b10_0101;
	    y = 6'b01_1011;
        result = x | y; // OR
	    
        #1; 
        result = ~(x | y); // NOR Try: x ~| y to see what happens
	    
        #1;
        x = 6'b01_0110;
	    y = 6'b01_1011;
        result = x ^ y; // XOR
	    
        #1; // NXOR is used to check if x = y
        result = x ~^ y; // NXOR
	    
        #1
        x = y; 
        result = ~(x ^ y); // NXOR
	end

endmodule


