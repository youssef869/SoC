module MUX_2x1 #(parameter N = 32)(
input  wire [N-1 :0]         in0,
input  wire [N-1 :0]         in1,
input  wire                  s,
output wire [N-1:0]          out
);

assign out = s ? in1 : in0;
endmodule