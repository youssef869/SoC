/*
 * Date        :                       24/9/2024
 ********************************************************************************************************************************************
 * Author      :                       Youssef Khaled
 ********************************************************************************************************************************************
 * File Name   :                       SoC.v
 ********************************************************************************************************************************************
 * Module Name :                       SoC
 ********************************************************************************************************************************************
 * Description :                       This System-on-Chip (SoC) design integrates the following components:
 *                                       1. A single-cycle MIPS processor acting as the APB master, managing the system's operations.
 *                                       2. An APB Address Decoder that generates the appropriate PSEL signals, directing communication 
 *                                          to the correct peripherals based on the address space.
 *                                       3. A UART module functioning as an APB slave, providing serial communication capability for data 
 *                                          transmission and reception.
 *                                       The APB (Advanced Peripheral Bus) serves as the communication backbone, connecting the processor 
 *                                       with peripherals like the UART through the address decoder. The UART is equipped with APB 
 *                                       registers for easy configuration and operation.
 *
 *                                       Inputs:
 *                                       - CLK: Main system clock for the SoC.
 *                                       - UART_RX_CLK: Clock signal for the UART receiver.
 *                                       - RESETn: Active-low asynchronous reset signal for initializing the system.
 *                                       - RX: UART receive signal.
 *
 *                                       Outputs:
 *                                       - TX: UART transmit signal.
 ********************************************************************************************************************************************
 */


module SoC(
input  wire CLK,
input  wire UART_RX_CLK,
input  wire RESETn,
input  wire RX,
output wire TX
);

wire PSEL, PENABLE, PWRITE, PREADY, PSLVERR, PSEL0;
wire [31:0] PADDR, PWDATA, PRDATA;
wire [3:0] PSTRB;

MIPS_wrapper MIPS_wrapper_u0(              
.PCLK(CLK),
.PRESETn(RESETn),
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

address_decoder address_decoder_u0(
.PSEL(PSEL),
.PADDR(PADDR),
.PSEL0(PSEL0)
);

UART_wrapper UART_wrapper_u0(
.RX_IN(RX),
.PCLK(CLK),
.UART_RX_CLK(UART_RX_CLK),
.PRESETn(RESETn),
.PSEL(PSEL0),
.PENABLE(PENABLE),
.PADDR(PADDR),
.PWRITE(PWRITE),
.PWDATA(PWDATA),
.PSTRB(PSTRB),
.TX_OUT(TX),
.PREADY(PREADY),
.PSLVERR(PSLVERR),
.PRDATA(PRDATA)
);

endmodule