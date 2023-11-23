`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2023 15:17:56
// Design Name: 
// Module Name: sipo_tb
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


module sipo_tb();
reg si,clk,clr;
wire [3:0] po;
sipo dut (si,clk,clr,po);

initial clk=0;
always #5 clk=~clk;
initial begin
clr=1;
#20 clr=0; si=1;
#10 si=0;
#10 si=1;
#10 si=1;

#20 $stop;
end
endmodule
