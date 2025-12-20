module  demux_gate
(
input sel,
input x,
output y0,
output y1
);

wire not_sel;


not not1 (not_sel, sel);
and and1 (y0, not_sel, x);
and and2 (y1, x, sel);

endmodule