


module comparator_nbit
    
#(parameter N=4) 
(
input [N-1:0] a,
input [N-1:0] ,
output reg smaller,
output equal,
output greater 
);

always @(*) begin
    
smaller = (a < b);
equal   = (a == b);
greater = (a > b);
end


endmodule
