//It has a single clock input and a 32-bit output port
module blink (
	input wire clk,
	output wire LED
 ); 

reg [31:0] cnt;

initial
cnt <= 32'b0;
 
always @ (posedge clk) // on positive clock edge
begin
	cnt <= cnt + 1;// increment counter
end 

assign LED = cnt[24];

endmodule // end of module counte