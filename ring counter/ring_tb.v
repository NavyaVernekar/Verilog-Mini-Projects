`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2023 11:42:57
// Design Name: 
// Module Name: ring_tb
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


module ring_tb();
reg clk,rst;
wire [3:0] q;
ring dut (clk,rst,q);
initial clk=1;
always #5 clk =~clk;
initial begin
rst =1;
#400 rst =0;
end
endmodule
