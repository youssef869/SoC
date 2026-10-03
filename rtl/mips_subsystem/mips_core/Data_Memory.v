module Data_Memory(
input  wire [6:0] A,

input  wire CLK,
input  wire WE,

input  wire [31:0] WD,

output wire [31:0] RD
);

parameter DEPTH = 128;

reg [31:0] data_mem [0: DEPTH - 1];

assign RD = data_mem[A];

always @(posedge CLK) begin
	if(WE) begin
		data_mem[A] <= WD;
	end
end
endmodule