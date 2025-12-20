module bit_comparotor(
input a,
input b,
output smaller,
output equal,
output greater
);

wire not_b;
wire not_a;

not not1 (not_a,a);
not not2 (not_b,b);

and and1 (smaller,b,not_a);
and and2 (greater,a,not_b);
xnor xnor1(equal,a,b );

endmodule