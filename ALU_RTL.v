`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Hamim Reja
// 
// Create Date: 08.12.2024 20:20:24
// Design Name: 4-bit Arithmetic Unit with Addition, Subtraction, Multiplication, and Division
// Module Name: ALU_RTL
//////////////////////////////////////////////////////////////////////////////////

module ALU_RTL(
    input [7:0] A, B,
    input [1:0] control,
    output reg [7:0] op,
    output reg c_out
);
    parameter ADD = 2'b00, SUB = 2'b01, AND_op = 2'b10, OR_op = 2'b11;


    always @(*) begin
        op = 8'b0;       // Default value for output
        c_out = 1'b0;    // Default value for carry-out
        case (control)
            ADD: {c_out, op} = A+B;       // Perform addition
            SUB: {c_out, op} = A-B;  // Perform subtraction
            AND_op: op = A&B;
            OR_op: op=A|B;
            default: {c_out, op} = 8'b0; 
        endcase
    end
endmodule
