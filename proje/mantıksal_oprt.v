module mant_opr();
  
reg [2:0] hsyn = 3'b111;
reg [3:0] cicek = 4'b0000;
reg result;


initial begin
    
    $monitor("MON hsyn = %b, cicek = %b, result =%b", hsyn,cicek,result );

end
initial begin
    result = !hsyn;
    
    #1;
    result = !cicek;
    
    #1;
    result = hsyn && cicek;
    
    #1;
    result = hsyn || cicek;

    #1;
    hsyn = 3'bz0X;
    result = !hsyn;

    #1;
    result = hsyn || cicek;
    
    #1;
    result = hsyn && cicek;
end
endmodule