/*
// iki kod mantığı aynı ikiside gate algoritmasını basit bir kod bloğu ile yazdırır
module full_adder_Behavioral(
input a,
input b,
input carry_in,
output reg  sum,
output  reg carry_out

);

always @(a or b or carry_in)  begin
    
sum = a ^ b ^ carry_in;
carry_out = (a & b) | (carry_in & (a^b)); 

end
endmodule

*/
module full_adder_Behavioral(
input a,
input b,
input carry_in,
output reg sum,
output reg carry_out

);

always @(*) begin
    { carry_out,sum}= a + b + carry_in ;
end
endmodule