`timescale 1us/1ns
module SoC_tb();

reg  CLK_tb;
reg  RESETn_tb;
reg  RX_tb;
reg  UART_RX_CLK_tb;
wire TX_tb;

parameter EVEN = 0,
          ODD  = 1;

parameter WITH_PARITY = 1,
          WITHOUT_PARITY = 0;


parameter CLK_PERIOD = 16;
parameter INSTRUCTIONS_COUNT = 18;
parameter RX_PRESCALE = 8;


always #(CLK_PERIOD / 2.0) CLK_tb = ~CLK_tb;
always #(CLK_PERIOD / 2.0 / RX_PRESCALE) UART_RX_CLK_tb = ~UART_RX_CLK_tb;

integer i;

initial begin
	$dumpfile("SoC.vcd");
	$dumpvars;
	initialize();

	run_1();//test_program_1
	//run_2();//test_program_2
	
	//test_program_3
	//run_3(8'b0100_1101,WITH_PARITY,1'b1); // first argument is data to be transmitted on UART RX input port, second one is parity enable, third one is parity bit(if any)

	$stop;
end

task initialize ;
begin
	CLK_tb   = 1'b0;
	UART_RX_CLK_tb = 1'b0;
	RESETn_tb = 1'b1;
	$readmemh("data.dat", DUT.MIPS_wrapper_u0.MIPS_u0.D_mem.data_mem);
end
endtask

task reset ;
begin
	RESETn_tb = 1'b0;
	#(CLK_PERIOD);
	RESETn_tb = 1'b1;
end
endtask


task run_1 ;
begin
	$readmemh("test_program_1.dat", DUT.MIPS_wrapper_u0.MIPS_u0.I_mem.instr_mem);
	reset();
	#(CLK_PERIOD * INSTRUCTIONS_COUNT);
end
endtask

task run_2 ;
begin
	$readmemh("test_program_2.dat", DUT.MIPS_wrapper_u0.MIPS_u0.I_mem.instr_mem);
	reset();
	#(CLK_PERIOD * 50);
end
endtask

task run_3 ;
input [7:0] data;
input parity_enable;
input parity_bit;
begin
	reset();
	config_uart();
	if(parity_enable == WITH_PARITY) begin
		transmit_par(data, parity_bit);
	end
	else begin
		transmit_no_par(data);
	end

	#(CLK_PERIOD * 50);

end
endtask


task config_uart ;
begin
	$readmemh("test_program_3.dat", DUT.MIPS_wrapper_u0.MIPS_u0.I_mem.instr_mem);
	#(CLK_PERIOD* 10);
end
endtask


task transmit_no_par ;
input [7:0] data;
begin
	RX_tb = 1'b0;
	#(CLK_PERIOD);
	for(i = 0; i < 8; i = i + 1) begin
		RX_tb = data[i];
		#(CLK_PERIOD);
	end
	RX_tb = 1'b1;
	#(CLK_PERIOD);
end
endtask 

task transmit_par ;
input [7:0] data;
input       parity_bit;
begin
	RX_tb = 1'b0;
	#(CLK_PERIOD);
	for(i = 0; i < 8; i = i + 1) begin
		RX_tb = data[i];
		#(CLK_PERIOD);
	end
	RX_tb = parity_bit;
	#(CLK_PERIOD);
	RX_tb = 1'b1;
	#(CLK_PERIOD);
end
endtask

SoC DUT(
.CLK(CLK_tb),
.UART_RX_CLK(UART_RX_CLK_tb),
.RESETn(RESETn_tb),
.RX(RX_tb),
.TX(TX_tb)
);

endmodule