`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2023 15:05:52
// Design Name: 
// Module Name: decoder_3_8
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


module decoder_3_8(a,e,y);
input [2:0]a;
input e;
output reg  [7:0]y;

always @(e,a)
begin
if(e==1)
    y=8'b11111111;
else
    begin
        if(a==3'b000)
            y=8'b11111110;
        else if(a==2'b001)
            y=8'b11111101;
        else if(a==2'b010)
            y=8'b11111011;
        else if(a==3'b011)
            y=8'b11110111;
        else if(a==3'b100)
            y=8'b11101111;
        else if(a==3'b101)
            y=8'b11011111;
        else if(a==3'b110)
            y=8'b10111111;
        else
            y=8'b01111111;
     end
end
endmodule
