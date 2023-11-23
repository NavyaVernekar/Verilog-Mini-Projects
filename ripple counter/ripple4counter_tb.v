`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2023 16:27:38
// Design Name: 
// Module Name: ripple4counter_tb
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


module ripple4counter_tb();
reg clk,rst;
wire [3:0] q;
ripple4counter dut (clk,rst,q);
initial 
clk=0;

always #5 clk=~clk;
initial begin
rst=1;
#10 rst=0;
#150 $stop;
end

endmodule
