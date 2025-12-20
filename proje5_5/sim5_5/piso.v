
module shift_reg_piso(
	input clk,
	input reset_n,
	input sdi, s
	input pl,  
    input [3:0] d,
	output sdo
    );
	
	// Internal 4 bits wide register
	reg [3:0] piso;
	wire [3:0] data_src; // nets after the mux'es
	
	// If pl == 1 uses the parallel input as data source
	assign data_src = pl ? d : {piso[2:0], sdi};
	
	// Async negative reset is used
	always @(posedge clk or negedge reset_n) begin
	    if (!reset_n)
		    piso <= 4'b0;
	    else
		    piso[3:0] <= data_src;
	end

    // Connect the sdo net to the register MSB
    assign sdo = piso[3];

endmodule
// bu kodun aslında mantığı şu bi veri var bu verinin en soldaki üç bitlik kısmına sdi girişi veriliyor sı-onrasında ise 
// bunlar birleştiriliyor(bunun kontrolünü ise 16.satrıda göstermiş) ve ilk biti seri çıkıştan dışarı çıkıyor 