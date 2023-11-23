`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2023 14:41:51
// Design Name: 
// Module Name: decoder
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


module decoder(y,a,e);
input [1:0]a;
input e;
output reg  [3:0]y;

always @(e,a)
begin
if(e==1)
    y=4'b1111;
else
    begin
        if(a==2'b00)
            y=4'b1110;
        else if(a==2'b01)
            y=4'b1101;
        else if(a==2'b10)
            y=4'b1011;
        else
            y=4'b0111;
     end
end
endmodule
