`timescale 1ns / 1ps

module multiplexer_tb;
    // Inputs to the multiplexer
    reg [1:0] A, B, C, D;
    reg [1:0] SEL;
    // Output from the multiplexer
    wire [1:0] X;

    // Instantiate the multiplexer
    multiplexer uut (
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .SEL(SEL),
        .X(X)
    );

    // Testbench stimulus
    initial begin
        // Initialize inputs
        A = 2'b00; B = 2'b01; C = 2'b01; D = 2'b11;

        // Step through selector values
        SEL = 2'b00; // Select input A
        #10; // Wait for the output to settle
        SEL = 2'b01; // Select input B
        #10;
        SEL = 2'b10; // Select input C
        #10;
        SEL = 2'b11; 
        #10;
        
        
        #20;
    end
endmodule
