`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2023 16:22:32
// Design Name: 
// Module Name: comparator_1_tb
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


module comparator_1_tb();
reg a,b;
wire less,great,eq;
comparator_1 dut (less,great,eq,a,b);
initial begin
a=0;b=0;
#5 a=0; b=1;
#5 a=1; b=0;
#5 a=1; b=1;
#5 $stop;
end
endmodule
