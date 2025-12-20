module tri_state_buffer(

input din,
input sel,
output dout
);

befif1 B1 (dout,din,sel);   


endmodule