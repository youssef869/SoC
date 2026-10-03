module Control_Unit(
input  wire [5:0] Opcode,
input  wire [5:0] Funct,
input  wire       Zero,
output wire       RegWrite,
output wire       RegDst,
output wire       ALUSrc,
output wire       PCSrc,
output wire       MemWrite,
output wire       MemtoReg,
output wire       Jump,
output wire [2:0] ALUControl
);

wire [1:0] ALUOp;
wire       Branch;

ALU_Decoder alu_decoder(
.funct(Funct),
.ALUOp(ALUOp),
.ALUControl(ALUControl)
);

Main_Decoder main_decoder(
.Opcode(Opcode),
.RegWrite(RegWrite),
.RegDst(RegDst),
.ALUSrc(ALUSrc),
.Branch(Branch),
.MemWrite(MemWrite),
.MemtoReg(MemtoReg),
.Jump(Jump),
.ALUOp(ALUOp)
);

assign PCSrc = Branch & Zero;

endmodule