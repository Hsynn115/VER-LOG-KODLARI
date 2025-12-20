
`timescale 1us/1ns
module built_in_gates(
input a,b,c,d,
output o1,o2,o3,o4,o5,o6,o7,o8,o9,o10

);

and and1 (o1,a,b);
nand nand1 (o2,b,c);
//or or1  (o3,d,c);
nor nor1 (o4,a,d);
xor xor1 (o5,a,b,c,d);
xnor xnor1(o6,b,d);
buf buf1(o7,b);
not not1 (o8,d);

buf #0.1 buf_dly (o9,c);
and #0.1 and_dly (o10,a,b);
endmodule

