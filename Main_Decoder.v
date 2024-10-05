module Main_Decoder(
input  wire [5:0]  Opcode,

output wire        RegWrite,
output wire        RegDst,

output wire        ALUSrc,
output reg [1:0]   ALUOp,

output reg         Branch,
output reg         Jump,

output wire        MemWrite,
output wire        MemtoReg
);

localparam R_TYPE = 6'b000_000,
           lw     = 6'b100_011,
           sw     = 6'b101_011,
           beq    = 6'b000_100,
           addi   = 6'b001_000,
           j      = 6'b000_010;


reg [4:0] Control_Signals;
assign {RegWrite, RegDst, ALUSrc, MemWrite, MemtoReg} = Control_Signals;

//control signals that are don't care are assigned to zero for simplicity
//ALUOp is tied to 2'b11 for unused states
always @(*) begin
	Jump   = 1'b0;
	Branch = 1'b0;
	case(Opcode)
	// R type
		R_TYPE: begin 
			Control_Signals = 5'b110_00;
			ALUOp = 2'b10;
		end

	//lw
		lw: begin
			Control_Signals = 5'b101_01;
			ALUOp = 2'b00;
		end

	//sw
		sw: begin
			Control_Signals = 5'b001_10;
			ALUOp = 2'b00;
		end

	//beq
		beq: begin
			Control_Signals = 5'b000_00;
			Branch = 1'b1;
			ALUOp = 2'b01;
		end

	//addi
		addi: begin
			Control_Signals = 5'b101_00;
			ALUOp = 2'b00;
		end

	//j
		j: begin
			Control_Signals = 5'b101_00;
			ALUOp = 2'b11;
			Jump = 1'b1;
		end

	//unused opcodes
		default: begin
			Control_Signals = 5'b000_00;
			ALUOp = 2'b11;
		end
	endcase
end
endmodule