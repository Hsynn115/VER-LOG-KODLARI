module  tb_dmux_4x_nbit();

parameter BUS_WIDTH =8;
reg [BUS_WIDTH-1:0] y;
reg [1:0] sel;
wire [BUS_WIDTH-1:0] a,b,c,d;
integer i;


dmux_4x_nbit 
#(.BUS_WIDTH(BUS_WIDTH )) 
DEMUX (
.y(y),
.sel(sel),
.a(a),
.b(b),
.d(d),
.c(c)
);

initial begin
   
    $monitor ($time," sel=%d, y=%d, a = %d, b = %d, c = %d, d = %d", sel, y, a, b, c, d, );
    #1; sel=0;  y=0;
    for (i =0 ;i<8 ;i=i+1 ) begin
        #1; sel = i%4; y=$urandom();
     end


end



endmodule