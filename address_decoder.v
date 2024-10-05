module address_decoder(
input  wire        PSEL,
input  wire [31:0] PADDR,
output reg         PSEL0
);

always @(*) begin
	if(~PSEL) begin
		PSEL0 = 1'b0;
	end
	//UART address range
	else if(PADDR > 32'd127 && PADDR < 32'd512) begin
		PSEL0 = 1'b1;
	end
	else begin
		PSEL0 = 1'b0;
	end

end
endmodule