module tb_priority_encoder ();
reg [3:0] d;
wire [1:0] q;    
wire v;
 

integer i;

priority_encoder PR1 (
.d(d),
.q(q),
.v(v)
);

initial begin
    $monitor( $time,"d=%b, q=%d, v=%d", d, q, v);
    #1; d=0;
    for (i =0 ; i<4; i=i+1) begin
        #1; d = (i<<1);
    end
    #1; d=4'b1111;
    #1; d=4'b1001;
    #1; d=4'b0101;
    #1; d=4'b0000;
    #1;  $stop;
end

endmodule