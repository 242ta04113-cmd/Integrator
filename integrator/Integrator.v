// 8-bit Digital Integrator
// Accumulates the input value on every rising clock edge

module integrator (
    input        clk,
    input        reset,
    input        enable,
    input  [7:0] input_data,
    output reg [7:0] output_data
);

    always @(posedge clk) begin
        if (reset)
            output_data <= 8'b00000000;
        else if (enable)
            output_data <= output_data + input_data;
    end

endmodule