
// bu kod always dışında karmasşık bir kod oluşturur aynı mantık ama karmaşık hali
module full_adder_data(
input a,
input b,
output reg sum,
input carry_in,
output reg carry_out

);


wire sum1;
wire and1;
wire and2;

assign sum1 = a ^ b;
assign and1 = sum1 & carry_in;
assign and2 = a & b;    
assign sum = sum1 ^ carry_in;
assign  carry_out = and1 | and2;


endmodule