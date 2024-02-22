`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2024 12:49:56
// Design Name: 
// Module Name: multiplexer
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module multiplexer(
    input [1:0] A,
    input [1:0] B,
    input [1:0] C,
    input [1:0] D,
    input [1:0] SEL,
    output [1:0] X
);
    reg [1:0] X_reg;

    always @(*) begin
        case (SEL)
            2'b00: X_reg = A;
            2'b01: X_reg = B;
            2'b10: X_reg = C;
            2'b11: X_reg = D;
            default: X_reg = 2'bxx; // For an undefined state
        endcase
    end

    assign X = X_reg; // Continuous assignment to output
endmodule



