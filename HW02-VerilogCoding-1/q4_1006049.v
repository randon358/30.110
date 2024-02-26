`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2024 12:12:12 PM
// Design Name: 
// Module Name: nibbleadd
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


module nibbleadd(
  input [7:0] A,
  input [7:0] B,
  input ctrl,
  output reg [4:0] q
);

  // Internal wires to hold the 4-bit partial sums
  wire [3:0] sum_lower;
  wire [3:0] sum_upper;
  wire carry_lower;
  wire carry_upper;

  // Calculate the sum of the lower 4 bits of A and B
  assign {carry_lower, sum_lower} = A[3:0] + B[3:0];

  // Calculate the sum of the upper 4 bits of A and B
  assign {carry_upper, sum_upper} = A[7:4] + B[7:4];

  // Always block to assign output based on ctrl
  always @ (A, B, ctrl)
    begin
      if (ctrl == 1'b0) begin
        // When ctrl is 0, output the sum of the lower 4 bits
        q = {1'b0, sum_lower}; // No carry out is expected in this case
      end else begin
        // When ctrl is 1, output the sum of the upper 4 bits
        q = {carry_upper, sum_upper};
      end
    end

endmodule

