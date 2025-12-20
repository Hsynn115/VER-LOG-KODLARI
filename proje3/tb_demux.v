module  tb_demux();
reg sel;
reg x;
wire y0,y1;

demux_gate  DENUX_GATES (
.sel(sel),
.x(x),
.y0(y0),
.y1(y1)

);


initial begin
  #1 x=1;  sel=0;
   #1 x=0;  sel=1;
    #1 x=1;  sel=1;
     #1 x=0;  sel=0;
      #1 x=1;  sel=1;
       
#5; $stop ;


end


endmodule