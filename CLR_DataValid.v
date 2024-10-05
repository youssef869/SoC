module CLR_DataValid (
    input wire clk,
    input wire rst_n,
    input wire in0,
    input wire in1,
    output reg out
);


    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            out <= 0;
        end else begin
            if (in0) begin
                out <= 1;
            end
            if (in1) begin
                out <= 0;
            end
        end
    end

endmodule
