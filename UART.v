/*
*********************************************************************************************************************************************************
Status register      = register_file[0]  = {RX_Parity_Error, RX_Stop_Error, RX_DATA_VALID, TX_busy}
RX data register     = register_file[1]  = RX_P_DATA
RX prescale register = register_file[2]  = RX_prescale
TX data register     = register_file[3]  = TX_P_DATA
Control register     = register_file[4]  = {PAR_TYP, PAR_EN}
/**********************************************************************************************************************************************************
*/
module UART(
input  wire         CLK,
input  wire         UART_RX_CLK,
input  wire         RESETn,
input  wire         SEL,
input  wire         ENABLE,
input  wire [31: 0] ADDR,
input  wire         WRITE,
input  wire [31: 0] WDATA,
input  wire [3: 0]  STRB,
output wire         READY,
output wire         SLVERR,
output reg  [31: 0] RDATA,
input  wire         RX_IN,
output wire         TX_OUT

);

localparam REGISTERS_COUNT = 5;
integer i;

assign READY  = 1'b1;
assign SLVERR = 1'b0;

wire TX_BUSY, RX_DATA_VALID, RX_Stop_Error, RX_Parity_Error, READ_UART;
assign READ_UART = !WRITE && ENABLE && SEL && READY;


wire [8:0] UART_ADDR;
assign UART_ADDR = (ADDR-32'd128) >> 2;

reg [31:0] register_file [0: REGISTERS_COUNT-1];

wire tx_data_valid;
reg  tx_data_valid_reg;
assign tx_data_valid = WRITE && ENABLE && SEL && READY && UART_ADDR == 9'd3;

wire [7:0] RX_P_DATA_reg;

wire RX_DATA_VALID_reg;

wire [31:0] control_reg, status_reg, TX_P_DATA_reg, RX_prescale_reg;
assign status_reg      = {28'b0,RX_Parity_Error, RX_Stop_Error, RX_DATA_VALID_reg, TX_BUSY};
assign RX_prescale_reg = register_file[2];
assign TX_P_DATA_reg   = register_file[3];
assign control_reg     = register_file[4];



always @(posedge CLK) begin
	tx_data_valid_reg <= tx_data_valid;
	register_file[0] <= status_reg;
	register_file[1] <= {24'b0,RX_P_DATA_reg};
end

/*
always @(posedge CLK or negedge RESETn) begin
	if(!RESETn) begin
		RX_DATA_VALID_reg <= 1'b0;
	end
	if(RX_DATA_VALID) begin
		RX_DATA_VALID_reg <= 1'b1;
	end
	else if(READ_UART) begin
		RX_DATA_VALID_reg <= 1'b0;
	end
	else begin
		RX_DATA_VALID_reg <= 1'b0;
	end
end
*/

always @(negedge CLK or negedge RESETn) begin
	if (!RESETn) begin
		for(i = 0; i<REGISTERS_COUNT; i = i + 1) begin
			register_file[i] <= 32'b0;
		end
	end

	else if(WRITE && ENABLE && SEL && READY && UART_ADDR != 9'd0 && UART_ADDR != 9'd1) begin
		register_file[UART_ADDR] <= WDATA;
	end

	else if(READ_UART) begin
		RDATA <= register_file[UART_ADDR];
	end
end




UART_TX UART_TX_u0(
.P_DATA(TX_P_DATA_reg[7:0]),
.CLK(CLK),
.RST(RESETn),
.PAR_EN(control_reg[0]),
.DATA_VALID(tx_data_valid_reg),
.PAR_TYPE(control_reg[1]),
.BUSY(TX_BUSY),
.TX_OUT(TX_OUT)
);

UART_RX UART_RX_u0(
.CLK(UART_RX_CLK),
.RST(RESETn),
.RX_IN(RX_IN),
.PAR_EN(control_reg[0]),
.PAR_TYP(control_reg[1]),
.Prescale(RX_prescale_reg[5:0]),
.Data_Valid(RX_DATA_VALID),
.Stop_Error(RX_Stop_Error),
.Parity_Error(RX_Parity_Error),
.P_DATA(RX_P_DATA_reg)
);

CLR_DataValid CLR_DataValid_u0(
.clk(UART_RX_CLK),
.rst_n(RESETn),
.in0(RX_DATA_VALID),
.in1(READ_UART),
.out(RX_DATA_VALID_reg)
);

endmodule