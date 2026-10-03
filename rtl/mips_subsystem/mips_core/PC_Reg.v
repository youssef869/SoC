module PC_Reg(
input wire [31:0] pc_bar,

input wire        CLK,
input wire        RESETn,

output reg [31:0] pc
);

always @(posedge CLK or negedge RESETn) begin
	if (!RESETn) begin
		pc <= 32'b0;
	end
	else begin
		pc <= pc_bar;
	end
end
endmodule