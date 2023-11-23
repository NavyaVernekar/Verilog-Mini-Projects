`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2023 20:49:23
// Design Name: 
// Module Name: excess3
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


module excess3(bcd,ecx);
input [2:0] bcd;
output reg [2:0] ecx;

always @(bcd) 
    ecx = bcd +3;
 

endmodule
