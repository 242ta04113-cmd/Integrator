`timescale 1ns/1ps

module integrator_tb;

    reg clk;
    reg reset;
    reg enable;
    reg [7:0] input_data;

    wire [7:0] output_data;

    // Instantiate integrator
    integrator uut (
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .input_data(input_data),
        .output_data(output_data)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin

        $monitor("Time=%0t | Reset=%b | Enable=%b | Input=%d | Output=%d",
                 $time, reset, enable, input_data, output_data);

        // Initial values
        clk = 0;
        reset = 1;
        enable = 0;
        input_data = 0;

        // Reset
        #10;

        // Start integration
        reset = 0;
        enable = 1;

        input_data = 8'd5;
        #10;

        input_data = 8'd10;
        #10;

        input_data = 8'd15;
        #10;

        input_data = 8'd20;
        #10;

        // Hold output
        enable = 0;
        #10;

        // Reset
        reset = 1;
        #10;

        reset = 0;
        enable = 1;
        input_data = 8'd5;
        #10;

        $finish;
    end

endmodule