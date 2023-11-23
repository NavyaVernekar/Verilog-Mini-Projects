`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2023 14:36:12
// Design Name: 
// Module Name: halfadder_tb
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


module halfadder_tb();
reg a,b;
wire sum,carry;
halfadder dut (a,b,sum,carry);
initial begin
a=1;b=1;
#10 a=0; b=0;
#10 a=1; b=0;
#10 a=0; b=1;
#10 $stop;
end
endmodule
