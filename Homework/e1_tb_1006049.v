`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2024 17:47:28
// Design Name: 
// Module Name: nor_rs_tb
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


module nor_rs_tb;
  wire q,qb;
  reg r,s;
nor_rs dut1(q,qb,r,s);

initial 
  begin
    r=0;s=0;
    #10 s=0; r=1;
    #10 s=1;r=0;
    #10 s=1;r=1;
  end


endmodule
