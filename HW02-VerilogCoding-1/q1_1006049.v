`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2024 15:21:16
// Design Name: 
// Module Name: decade_counter
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


module decade_counter(
  input clk,
  input rst,
  output [3:0] count,
  output ten
);
//internal registers
reg [3:0] count_internal;
reg ten_internal;

//assign internal registers to outputs
assign count=count_internal;
assign ten= ten_internal;
    
always @(posedge clk or posedge rst) begin
  if (rst) begin
    count_internal <= 4'b0000;
    ten_internal <= 0;
  end else begin
    if (count_internal == 4'b1001) begin
      count_internal <= 4'b0000;
      ten_internal <= 1; //setting 'ten' to '1'
    end else begin 
      count_internal <= count_internal +1;
      ten_internal <= 0 ; // rest 'ten' to '0' on other counts 
    end
  end
end
endmodule
