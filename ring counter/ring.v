`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2023 11:14:06
// Design Name: 
// Module Name: ring
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


module ring(clk,rst,q);
input clk,rst;
output reg [3:0] q;
wire clk1;
counter c1 (clk,rst,clk1);
initial q=4'b001;
always @(posedge clk1 )
if(rst)
    q=4'b0001;
else 
    q={q[0],q[3:1]};
endmodule

module counter(clk,rst,clk1);
input clk,rst;
output clk1;
reg [24:0] q;
assign clk1=q[24];
always @(posedge clk )
if(rst)
    q=25'b0;
else
    q=q+1;
 endmodule
