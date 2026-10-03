//APB master interface for the single cycle MIPS processor
module MIPS_wrapper (              
input  wire         PCLK,
input  wire         PRESETn,
input  wire         PREADY,
input  wire         PSLVERR,
input  wire [31: 0] PRDATA,
output reg          PSEL,
output reg          PENABLE,
output wire [31: 0] PADDR,
output wire         PWRITE,
output wire [31: 0] PWDATA,
output wire [3: 0]  PSTRB
);

wire transfer;
reg transfer_reg;
reg access_done;

assign PSTRB = 4'b1111; //should be modified for byte and half-word access handling

MIPS MIPS_u0(
.CLK(PCLK),
.access_done(access_done),
.READY(PREADY),
.ENABLE(PENABLE),
.RESETn(PRESETn),
.WDATA(PWDATA),
.transfer(transfer),
.RDATA(PRDATA),
.ADDR(PADDR),
.WRITE(PWRITE)
);


localparam IDLE   = 2'b00,
           SETUP  = 2'b01,
           ACCESS = 2'b11;


reg [1:0] cs, ns;

always @(posedge PCLK or negedge PRESETn) begin
	if (!PRESETn) begin
		cs <= IDLE;
	end
	else begin
		cs <= ns;
	end
end

always @(*) begin
	PENABLE     = 1'b0;
	PSEL        = 1'b0;
	access_done = 1'b0;
	case(cs)
	IDLE: begin
		PENABLE = 1'b0;
		PSEL    = 1'b0;
		if(transfer) begin
			ns = SETUP;
		end
		else begin
			ns = IDLE;
		end
	end

	SETUP: begin
		PENABLE = 1'b0;
		PSEL    = 1'b1;
		ns      = ACCESS;
	end

	ACCESS: begin
		PENABLE = 1'b1;
		PSEL    = 1'b1;
		if(!PREADY) begin
			ns = ACCESS;
		end
		else if (transfer) begin
			ns = SETUP;
			access_done = 1'b1;
		end
		else begin
			ns = IDLE;
			access_done = 1'b1;
		end
	end

	default: begin
		PENABLE = 1'b0;
		PSEL    = 1'b0;
		ns = IDLE;
	end
	endcase
end


always @(posedge PCLK) 
begin
	transfer_reg <= transfer;
end

endmodule