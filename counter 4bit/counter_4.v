`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2023 17:05:17
// Design Name: 
// Module Name: counter_4
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


module counter_4(en,ud,clk,rst,count);
input en,clk,rst,ud;
output reg [3:0] count;

always @(posedge clk)
begin
if(rst)
    count <= 0;
else if(en)
    if(ud)
        count <= count + 1;
    else
        count <= count -1;
else
    count <= count;
end
endmodule
