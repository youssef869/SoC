module Intruction_Memory(
input  wire [9:0] A,

output wire [31:0] RD
);

parameter DEPTH = 1024;
reg [31:0] instr_mem [0: DEPTH -1];

assign RD = instr_mem[A];
endmodule