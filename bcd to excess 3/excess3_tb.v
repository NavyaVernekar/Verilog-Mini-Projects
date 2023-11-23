`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2023 20:53:30
// Design Name: 
// Module Name: excess3_tb
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


module excess3_tb();
reg [2:0] bcd;
wire [2:0] ecx;
excess3 dut (bcd,ecx);
initial begin
bcd =3'b000;
repeat (8)
    #5 bcd = bcd +1;
end
endmodule
