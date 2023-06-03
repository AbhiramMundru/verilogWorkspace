module upCnt8(
	input btn,
	output [7:0] led);
	
	reg [7:0] cnt;
	
	initial cnt<=8'b0;
	
	always@(posedge btn) 
		cnt<=cnt+1;
		
	assign led  = cnt;

endmodule
