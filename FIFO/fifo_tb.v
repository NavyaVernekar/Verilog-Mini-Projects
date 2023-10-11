`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2023 12:59:07
// Design Name: 
// Module Name: fifo_tb
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


module fifo_tb();
reg wr,rd,clk=0,rst;
reg [7:0] wr_in;
wire [7:0] rd_out;
wire full,empty,overflow,underflow,threshold;
fifo dut (clk,rst,wr,wr_in,rd,rd_out,full,empty,overflow,underflow,threshold);
always #5 clk = ~clk;
initial begin
wr =1; wr_in= 8'hf4;rd=0; 
#10;
wr =1; wr_in= 8'ha4;
#10;
wr =1; wr_in= 8'h9d;
#10;
wr =1; wr_in= 8'ha3;
#10;
wr =1; wr_in= 8'h82;
#10;
wr =1; wr_in= 8'he4;rd=0;
#10;
wr =1; wr_in= 8'ha8;
#10;
wr =1; wr_in= 8'h93;
#10;
wr =1; wr_in= 8'hc3;
#10;
wr =1; wr_in= 8'ha2;
#10;
wr =1; wr_in= 8'h63;rd=0;
#10;
wr =1; wr_in= 8'ha5;
#10;
wr =1; wr_in= 8'hc3;
#10;
wr =1; wr_in= 8'hb2;
#10;
wr =1; wr_in= 8'hb2;
#10;
wr =1; wr_in= 8'hc3;
#10;
wr =1; wr_in= 8'h9d;
#10;
rd=1; #10; wr=0;
#200 $finish;
end

endmodule
