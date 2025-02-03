`timescale 1ns / 1ps

module ALU_RTL_tb;

    // Inputs
    reg [7:0] A;
    reg [7:0] B;
    reg [1:0] control;

    // Outputs
    wire [7:0] op;
    wire c_out;

    // Instantiate the Unit Under Test (UUT)
    ALU_RTL uut (
        .A(A),
        .B(B),
        .control(control),
        .op(op),
        .c_out(c_out)
    );

    // Testbench logic
    initial begin
        // Initialize inputs
        A = 8'b0;
        B = 8'b0;
        control = 2'b0;

        // Test Addition
        #10 A = 8'd30; B = 8'd40; control = 2'b00; // A=3, B=5 -> ADD: 8

        // Test Subtraction
        #10 A = 8'b01010011; B = 8'b00110011; control = 2'b01; // A=5, B=3 -> SUB: 2
        
        //AND
        #10 A = 8'b01010011; B = 8'b00110011; control = 2'b10; // A=5, B=3 -> SUB: 2
        
        //OR
        #10 A = 8'b01010011; B = 8'b00110011; control = 2'b11; 

        // Add some delay to observe the output
        #20;

        // End simulation
        $stop;
    end

endmodule
