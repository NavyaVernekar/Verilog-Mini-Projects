`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2023 16:18:04
// Design Name: 
// Module Name: comparator_1
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


module comparator_1(less,great,eq,a,b);
input a,b;
output less,great,eq;
wire s;
and a1 (great,a,~b);
xor x1 (s,a,b);
and a2 (less,~a,b);
not n1 (eq,s);

endmodule
