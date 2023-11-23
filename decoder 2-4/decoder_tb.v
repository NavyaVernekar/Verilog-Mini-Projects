`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2023 14:46:34
// Design Name: 
// Module Name: decoder_tb
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


module decoder_tb();
reg [1:0] A;
reg E;
wire [3:0] Y;
decoder dut (.a(A),.e(E),.y(Y));
initial begin
E=1; A=2'b00;
#5 E=1; A=2'b01;
#5 E=1; A=2'b10;
#5 E=1; A=2'b11;
#5 E=0; A=2'b00;
#5 E=0; A=2'b01;
#5 E=0; A=2'b10;
#5 E=0; A=2'b11;
#5 $stop;
end
endmodule
