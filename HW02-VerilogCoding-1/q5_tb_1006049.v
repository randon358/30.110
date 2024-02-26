`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2024 12:35:56 PM
// Design Name: 
// Module Name: CCTA_tb
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



module CCTA_tb;

  // Inputs
  reg [3:0] A;
  reg [3:0] B;
  reg [3:0] C;
  reg rst;
  reg ctrl;

  // Output
  wire [4:0] q;

  // Instantiate the Unit Under Test (UUT)
  CCTA uut (
    .A(A), 
    .B(B), 
    .C(C),
    .rst(rst),
    .ctrl(ctrl),
    .q(q)
  );

  initial begin
    // Initialize Inputs
    A = 0; B = 0; C = 0; rst = 1; ctrl = 0;

    
    // Add stimulus here
    A = 4'h4; B = 4'h1; C = 4'h9; rst = 1;ctrl = 0; 
    #10;
    A = 4'h4; B = 4'h1; C = 4'h9; rst = 0;ctrl = 0; 
    #10;
    A = 4'h3; B = 4'hd; C = 4'hd; rst = 0;ctrl = 0; 
    #10;
    A = 4'h5; B = 4'h2; C = 4'h1; rst = 0;ctrl = 0; 
    #10;
    A = 4'hd; B = 4'h6; C = 4'hd; rst = 0;ctrl = 0; 
    #10;
    A = 4'hd; B = 4'hc; C = 4'h9; rst = 0;ctrl = 0; 
    #10;
    A = 4'h6; B = 4'h5; C = 4'ha; rst = 0;ctrl = 1; 
    #10;
    A = 4'h5; B = 4'h7; C = 4'h2; rst = 0;ctrl = 1; 
    #10;
    A = 4'hf; B = 4'h2; C = 4'he; rst = 0;ctrl = 1; 
    #10;
    A = 4'h8; B = 4'h5; C = 4'hc; rst = 0;ctrl = 1; 
    #10;
    A = 4'hd; B = 4'hd; C = 4'h5; rst = 0;ctrl = 1; 
    #10;
    A = 4'h3; B = 4'ha; C = 4'h0; rst = 0;ctrl = 1; 
    #10; 

    $finish;
  end
  
  // Monitor changes to the inputs and output
  initial begin
    $monitor("At time %t, A = %h | B = %h | C = %h | rst = %b | ctrl = %b | q = %h", $time, A, B, C, rst, ctrl, q);
  end

endmodule

