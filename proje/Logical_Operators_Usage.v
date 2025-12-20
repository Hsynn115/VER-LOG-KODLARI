module logical_opr_usade();

reg [2:0] ag = 3'b111;
reg [3:0] çkr = 4'b0000;
reg result;

initial begin
    #1;
    if (!ag) begin
        $display ("ag=%b",ag);
    end else begin
        $display ("beklenen ag= 0 ama ag? = %b", ag);
    

 end
     #1;
    if (!çkr) begin
        $display ("çkr=%b", çkr);
    end else begin
        $display ("beklenen çkr = 0 ama çkr? = %b", çkr);
    
        
 end
    #1;
    if (ag && (!çkr)) begin
        $display ("ag=%b, çkr=%b ", ag, çkr);
    end else begin
        $display(":( I expected ag!=0 AND çkr=0 but ag=%b but çkr=%b", ag, çkr);
end
    
    #1;
    while (çkr < 3) begin
          $display("WHILE_LOOOP çkr=%d", çkr);
           çkr = çkr + 1; 
    end

end
endmodule
