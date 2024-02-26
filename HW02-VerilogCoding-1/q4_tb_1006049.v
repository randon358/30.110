`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2024 12:12:34 PM
// Design Name: 
// Module Name: nibbleadd_tb
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




module nibbleadd_tb;

  // Inputs
  reg [7:0] A;
  reg [7:0] B;
  reg ctrl;

  // Output
  wire [4:0] q;

  // Instantiate the Unit Under Test (UUT)
  nibbleadd uut (
    .A(A), 
    .B(B), 
    .ctrl(ctrl), 
    .q(q)
  );

  initial begin
    // Initialize Inputs
    A = 0;;
    B = 0;
    ctrl = 0;
    
    A = 8'h24; B = 8'h81; ctrl = 0; 
    #10;
    A = 8'h09; B = 8'h63; ctrl = 0; 
    #10;
    A = 8'h0d; B = 8'h8d; ctrl = 0; 
    #10;
    A = 8'h65; B = 8'h12; ctrl = 0;
    #10;
    A = 8'h01; B = 8'h0d; ctrl = 0; 
    #10;
    A = 8'h76; B = 8'h3d; ctrl = 1; 
    #10;
    A = 8'hed; B = 8'h8c; ctrl = 1; 
    #10;
    A = 8'hf9; B = 8'hc6; ctrl = 1;
    #10;
    A = 8'hc5; B = 8'haa; ctrl = 1; 
    #10;
    A = 8'he5; B = 8'h77; ctrl = 1; 
    #10;
    A = 8'h12; B = 8'h8f; ctrl = 1;
    #10;
    $finish;

  end
  

endmodule

