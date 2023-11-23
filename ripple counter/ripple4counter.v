`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2023 16:18:02
// Design Name: 
// Module Name: ripple4counter
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


module ripple4counter(clk,rst,q);
input clk,rst;
output [3:0] q;

  tff t1 (q[0], clk, rst);
  tff t2 (q[1], q[0], rst);
  tff t3 (q[2], q[1], rst);
  tff t4 (q[3], q[2], rst);

endmodule

module tff(q,clk,rst);
input clk,rst;
output q;
wire d;
not n1 (d,q);
dff d1 (q,d,clk,rst);
endmodule

module dff(q,d,clk,rst);
input clk,rst,d;
output reg  q;

always @(negedge clk or posedge rst) begin
if(rst)
    q=0;
else
    q=d;
end
endmodule
