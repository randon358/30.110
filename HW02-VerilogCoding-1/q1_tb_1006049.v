`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2024 15:27:14
// Design Name: 
// Module Name: decade_counter_tb
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


module decade_counter_tb();

reg clk;
reg rst; 
wire [3:0]count;
wire ten;

decade_counter decade_counter_u0(
    .clk(clk),
    .rst(rst),
    .count(count),
    .ten(ten)
    );
    
always begin
//genereate 20 unit time clock
  clk = 1'b0;
  #10 //half period delay
  clk = 1'b1; 
  #10; //half period delay
end 
  


initial begin
// initialize clk,rst
  clk = 1'b0; //initial state of clock
  rst = 1'b1; //activate reset 
  #40 //wait for 40 time units to reset behavior 
  rst = 1'b0; //deactivate rset begin
  //let counter run for 200 time units since each cycle is 20 units 
  #200
    
    //finish simulation
    $finish;
end

endmodule
