`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2024 13:11:32
// Design Name: 
// Module Name: demultiplexer_tb
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


// Testbench for 1-to-4 Demultiplexer
module demultiplexer_tb();

reg [1:0] A;
reg [1:0] SEL;
wire [1:0] W;
wire [1:0] X;
wire [1:0] Y;
wire [1:0] Z;

// Instantiate the demultiplexer
demultiplexer uut (
    .A(A),
    .SEL(SEL),
    .W(W),
    .X(X),
    .Y(Y),
    .Z(Z)
);

// Test stimulus
initial begin
    // Initialize inputs
    A = 0;
    SEL = 0;


    
    // Add stimulus here
    A = 2'b00; SEL = 2'b00; #10;
    A = 2'b01; SEL = 2'b01; #10;
    A = 2'b01; SEL = 2'b10; #10;
    A = 2'b11; SEL = 2'b11; #10;
    
    // Finish the simulation
    $finish;
end

// Monitor changes and display them
initial begin
    $monitor("At time %t, SEL = %b | A = %b | W = %b | X = %b | Y = %b | Z = %b",
             $time, SEL, A, W, X, Y, Z);
end

endmodule

