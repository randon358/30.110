`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2024 17:47:12
// Design Name: 
// Module Name: nor_rs
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


module nor_rs(q,qb,r,s);
  output q,qb;
  input r,s;
nor #1 n1(q,r,qb);
nor #1 n2(qb,s,q);


endmodule
