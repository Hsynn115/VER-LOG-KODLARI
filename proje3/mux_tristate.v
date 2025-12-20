module mux_tristate (
input a,
input b,
input sel,
output dout

);

bufif0 (dout,a,sel);
bufif1 (dout,b,sel);

endmodule 