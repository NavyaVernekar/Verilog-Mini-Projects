`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2023 15:12:50
// Design Name: 
// Module Name: decoder_3_8_tb
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


module decoder_3_8_tb();
reg [2:0] A;
reg E;
wire [7:0] Y;
decoder_3_8 dut (.a(A),.e(E),.y(Y));
initial begin
E=1; A=3'bxxx;
#5 E=0; A=2'b000;
repeat(7)
begin
   #5  A=A+1;
end
#5 $stop;
end
endmodule
