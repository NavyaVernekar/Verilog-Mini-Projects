`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2023 17:08:10
// Design Name: 
// Module Name: counter_4_tb
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


module counter_4_tb();
reg en,clk=0,ud,rst;
wire [3:0] count;
counter_4 dut (en,ud,clk,rst,count);
always #5 clk=~clk;
initial begin
#5;
rst=1; en=1;ud=1;
#10 rst=0; ud=1;
#150 ud=0;
#100 $stop;
end

endmodule
