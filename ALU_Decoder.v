module ALU_Decoder(
input  wire [5:0] funct,
input  wire [1:0] ALUOp,
output reg  [2:0] ALUControl
);

localparam add       = 4'b0000,
           sub       = 4'b0010,
           and_instr = 4'b0100,
           or_instr  = 4'b0101,
           slt       = 4'b1010;

always @(*) begin
	case(ALUOp)
		2'b00: ALUControl = 3'b010;
		2'b01: ALUControl = 3'b110;
		2'b10: begin 
			case(funct[3:0])
				add:       ALUControl = 3'b010;
				sub:       ALUControl = 3'b110;
				and_instr: ALUControl = 3'b000;
				or_instr:  ALUControl = 3'b001;
				slt:       ALUControl = 3'b111;
				default:   ALUControl = 3'b011; //not used in ALU
			endcase
		end

		default: ALUControl = 3'b011; //not used in ALU
	endcase
end
endmodule