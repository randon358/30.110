`timescale 1ns / 1ps

module nibbleadd(
    input [7:0] A,
    input [7:0] B,
    input ctrl,
    output reg [4:0] q
);

    // Intermediate full 5-bit sums to include potential carry
    wire [4:0] full_sum_lower;
    wire [4:0] full_sum_upper;

    // Calculate the full 5-bit sum of the lower and upper 4 bits of A and B
    assign full_sum_lower = {1'b0, A[3:0]} + {1'b0, B[3:0]};
    assign full_sum_upper = {1'b0, A[7:4]} + {1'b0, B[7:4]};

    // Always block to assign output based on ctrl
    always @* begin
        if (ctrl == 1'b0) begin
            // When ctrl is 0, output the 5-bit sum of the lower 4 bits
            q = full_sum_lower;
        end else begin
            // When ctrl is 1, output the 5-bit sum of the upper 4 bits
            q = full_sum_upper;
        end
    end

endmodule
