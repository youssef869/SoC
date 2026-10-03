module Data_Path(
input  wire        READY,
input  wire        ENABLE,
input  wire        access_done,
input  wire        MemtoReg,
input  wire        WRITE,
input  wire [31:0] RDATA,
input  wire        transfer,
input  wire        PCSrc,
input  wire        Jump,
input  wire        ALUSrc,
input  wire [2:0]  ALUControl,
input  wire        RegDst,
input  wire        RegWrite,
input  wire [31:0] ReadData_mem,
input  wire        CLK,
input  wire        RESETn,
input  wire [31:0] instr,
output wire [31:0] PC,
output wire [31:0] ALUResult,
output wire        Zero,
output wire [31:0] WriteData_mem,
output wire [31:0] WDATA
);

wire P_regWrite;
reg P_regWrite_reg, transfer_reg;

assign WDATA = WRITE ? WriteData_mem : 32'b0;
assign P_regWrite = READY && ENABLE && !WRITE && access_done;

wire [4:0] WriteReg;
MUX_2x1 #(.N(5)) WriteReg_mux (
.in0(instr[20:16]),
.in1(instr[15:11]),
.s(RegDst),
.out(WriteReg)
);



wire [31:0] SrcA, SrcB, Result, WD3;
REG_FILE reg_file(
.A1(instr[25:21]),
.A2(instr[20:16]),
.A3(WriteReg),
.WE3((RegWrite && !transfer_reg) || (P_regWrite_reg)),
.WD3(WD3),
.CLK(CLK),
.RD1(SrcA),
.RD2(WriteData_mem)
);


ALU alu(
.ALU_Control(ALUControl),
.A(SrcA),
.B(SrcB),
.out(ALUResult),
.zero(Zero) 
);

wire [31:0] SignImm;
Sign_Extend sign_extend(
.in(instr[15:0]),
.out(SignImm)
);

MUX_2x1 #(.N(32)) SrcB_mux(
.in0(WriteData_mem),
.in1(SignImm),
.s(ALUSrc),
.out(SrcB)
);

MUX_2x1 #(.N(32)) MemtoReg_mux(
.in0(ALUResult),
.in1(ReadData_mem),
.s(MemtoReg),
.out(Result)
);

MUX_2x1 #(.N(32)) WD3_mux(
.in0(Result),
.in1(RDATA),
.s(P_regWrite_reg),
.out(WD3)
);

wire [31:0] PC_bar;
wire stall;

assign stall = transfer && !access_done;
PC_Reg pc_reg(
.pc_bar(stall ? PC : PC_bar),
.CLK(CLK),
.RESETn(RESETn),
.pc(PC)
);

wire [31:0] shifted_imm;
Shift_Left_2 shifter_0(
.in(SignImm),
.out(shifted_imm)
);

wire [27:0] j_shifter_out;
Shift_Left_2_J shifter_1(
.in(instr[25:0]),
.out(j_shifter_out)
);


wire [31:0] PCPlus4;
Adder_32Bit adder_0(
.a(PC),
.b(32'd4),
.out(PCPlus4)
);

wire [31:0] PCBranch;
Adder_32Bit adder_1(
.a(shifted_imm),
.b(PCPlus4),
.out(PCBranch)
);

wire [31:0] pc_mux_0_out;
MUX_2x1 #(.N(32)) pc_mux_0(
.in0(PCPlus4),
.in1(PCBranch),
.s(PCSrc),
.out(pc_mux_0_out)
);

wire [31:0] PCJump;
assign PCJump = {PCPlus4[31:28],j_shifter_out};

MUX_2x1 #(.N(32)) pc_mux_1(
.in0(pc_mux_0_out),
.in1(PCJump),
.s(Jump),
.out(PC_bar)
);

always @(posedge CLK) begin
	transfer_reg   <= transfer;
end

always @(negedge CLK) begin
    P_regWrite_reg <= P_regWrite;
end

endmodule