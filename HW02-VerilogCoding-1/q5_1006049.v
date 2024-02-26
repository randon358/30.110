module CCTA(
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input rst,
    input ctrl,
    output reg [4:0] q
);

always @(A, B, C, rst, ctrl) begin
    if (rst) begin
        q <= 5'b0; // Reset q to 0
    end else if (ctrl == 0) begin
        q <= A + B; // Sum of A and B
    end else begin
        q <= A - C; // Difference of A and C
    end
end

endmodule
