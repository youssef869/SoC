module UART_wrapper(
input  wire         UART_RX_CLK,
input  wire         RX_IN,
input  wire         PCLK,
input  wire         PRESETn,
input  wire         PSEL,
input  wire         PENABLE,
input  wire [31: 0] PADDR,
input  wire         PWRITE,
input  wire [31: 0] PWDATA,
input  wire [3: 0]  PSTRB,
output wire         TX_OUT,
output wire         PREADY,
output wire         PSLVERR,
output wire [31: 0] PRDATA
);

UART UART_u0(
.UART_RX_CLK(UART_RX_CLK),
.CLK(PCLK),
.RESETn(PRESETn),
.SEL(PSEL),
.ENABLE(PENABLE),
.ADDR(PADDR),
.WRITE(PWRITE),
.WDATA(PWDATA),
.STRB(PSTRB),
.READY(PREADY),
.SLVERR(PSLVERR),
.RDATA(PRDATA),
.RX_IN(RX_IN),
.TX_OUT(TX_OUT)
);
endmodule