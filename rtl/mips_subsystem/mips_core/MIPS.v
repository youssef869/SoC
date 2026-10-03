module MIPS(
input wire         CLK,
input wire         RESETn,
input wire  [31:0] RDATA,
input wire         access_done,
input wire         READY,
input wire         ENABLE,
output wire [31:0] WDATA,
output wire        transfer,
output wire [31:0] ADDR,
output wire        WRITE
);



localparam lw = 6'b100_011,
           sw = 6'b101_011;

wire MemtoReg, PCSrc, Jump, ALUSrc, RegDst, RegWrite, Zero, MemWrite, write_data_mem;
wire [2:0] ALUControl;
wire [31:0] PC, instr, ALUResult, ReadData_mem, WriteData_mem;



assign write_data_mem = (instr[31:26] == sw) && (ADDR < 32'd128);//enable for storing in data memory
assign transfer = (instr[31:26] == lw || instr[31:26] == sw) && (ADDR > 32'd127 && ADDR < 32'd1024) && (!access_done);
assign WRITE    = ((ADDR > 32'd127 && ADDR < 32'd1024) && (instr[31:26] == sw));
assign ADDR     = {ALUResult[31:2],2'b00};

Data_Path DP(
.READY(READY),
.ENABLE(ENABLE),
.WriteData_mem(WriteData_mem),
.RDATA(RDATA),
.access_done(access_done),
.WRITE(WRITE),
.transfer(transfer),
.MemtoReg(MemtoReg),
.PCSrc(PCSrc),
.Jump(Jump),
.ALUSrc(ALUSrc),
.ALUControl(ALUControl),
.RegDst(RegDst),
.RegWrite(RegWrite),
.CLK(CLK),
.RESETn(RESETn),
.instr(instr),
.PC(PC),
.ReadData_mem(ReadData_mem),
.ALUResult(ALUResult),
.Zero(Zero),
.WDATA(WDATA)
);


Control_Unit CU(
.Opcode(instr[31:26]),
.Funct(instr[5:0]),
.Zero(Zero),
.RegWrite(RegWrite),
.RegDst(RegDst),
.ALUSrc(ALUSrc),
.PCSrc(PCSrc),
.MemWrite(MemWrite),
.MemtoReg(MemtoReg),
.Jump(Jump),
.ALUControl(ALUControl)
);

Data_Memory D_mem(
.A(ADDR[6:0] >> 2), 
.CLK(CLK),
.WE(MemWrite && write_data_mem),
.WD(WriteData_mem),
.RD(ReadData_mem)
);

Intruction_Memory I_mem(
.A({PC[9:2],2'b00} >> 2),
.RD(instr)
);

endmodule