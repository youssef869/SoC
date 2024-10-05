`timescale 1ns/1ps
module MIPS_wrapper_tb();

parameter CLOCK_PERIOD = 10;
parameter INSTRUCTIONS_COUNT = 18;
            
reg          PCLK;
reg          PRESETn;
reg          PREADY;
reg          PSLVERR;
reg [31: 0]  PRDATA;
wire         PSEL;
wire         PENABLE;
wire [31: 0] PADDR;
wire         PWRITE;
wire [31: 0] PWDATA;
wire [3: 0]  PSTRB;


MIPS_wrapper DUT(              
.PCLK(PCLK),
.PRESETn(PRESETn),
.PREADY(PREADY),
.PSLVERR(PSLVERR),
.PRDATA(PRDATA),
.PSEL(PSEL),
.PENABLE(PENABLE),
.PADDR(PADDR),
.PWRITE(PWRITE),
.PWDATA(PWDATA),
.PSTRB(PSTRB)
);

initial begin
	PCLK = 1'b0;
	forever #(CLOCK_PERIOD) PCLK = ~PCLK;
end

initial begin
	$readmemh("instructions.dat", DUT.MIPS_u0.I_mem.instr_mem);
	$readmemh("data.dat", DUT.MIPS_u0.D_mem.data_mem);
	PRESETn = 1'b1;
	#(CLOCK_PERIOD);
	PRESETn = 1'b0;
	#(CLOCK_PERIOD);
	PRESETn = 1'b1;

	PRDATA = 32'hAABB_CCDD;
	PSLVERR = 1'b0;
	PREADY = 1'b1;
	#(INSTRUCTIONS_COUNT * CLOCK_PERIOD * 5);
	$stop;
end

endmodule