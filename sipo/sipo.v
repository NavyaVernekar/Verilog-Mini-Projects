`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2023 15:13:07
// Design Name: 
// Module Name: sipo
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

/*
module sipo(si,clk,clr,po);
input si,clk,clr;
output [3:0] po;

dff d1 (si,clk,clr,po[0]);
dff d2 (po[0],clk,clr,po[1]);
dff d3 (po[1],clk,clr,po[2]);
dff d4 (po[2],clk,clr,po[3]);

endmodule

module dff(in,clk,clr,op);
input in,clk,clr;
output reg op;

always @ (posedge clk) begin
if(clr)
    op=0;
else
    op=in;
end
endmodule
*/
module sipo(si,clk,clr,po);
input si,clk,clr;
output  [3:0] po;
reg [3:0] temp;
wire clk1;
counter c1 (clk,clr,clk1);
always @(posedge clk1) begin 
if(clr)
    temp= 4'b0000;
else
    temp={temp[2:0],si};
end
 
assign po=temp;
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