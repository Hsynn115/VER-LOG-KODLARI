module dflipflop (
    input d,
    input clk,
    input reset_n,
    output reg  q,
    output q_not
);
    
always @(posedge clk ) begin
    if (!reset_n) begin
        q<=1'b0;
        else
            q<=d;
    end
end 
assign q_not =~q;


endmodule