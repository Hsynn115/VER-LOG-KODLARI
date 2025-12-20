module ();

reg din;
reg sel;
wire dout;

tri_state_buffer TRİ_BUFFER (
.din(din),
.dout(dout),
.sel (sel)
);


initial begin
	   $monitor(" din = %b, sel = %b, dout = %b", din, sel, dout);
       #1; din = 0; sel = 0;
	   #1; din = 1; sel = 0;
       #1; din = 0; sel = 1;
       #1; din = 1; sel = 0;
       #1; din = 1; sel = 1;
	   #2; din = 0;
	   #5; $stop;
	end


endmodule