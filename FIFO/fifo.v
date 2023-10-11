`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2023 12:18:44
// Design Name: 
// Module Name: fifo
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


module fifo(clk,rst,wr,wr_in,rd,rd_out,full,empty,overflow,underflow,threshold);
input rd,wr,clk,rst;
input [7:0] wr_in;
output [7:0] rd_out;
output wire full,empty,overflow,underflow,threshold;
reg [7:0] fifo [0:15];
reg [3:0]readsp=0, writesp=0;
wire [3:0]count;

 assign count = writesp - readsp;
    assign full = (count == 15);
    assign empty = (count == 0);
    assign overflow = (wr && full);
    assign underflow = (rd && empty);
    assign threshold = (count < 8); 
    
 always @(posedge clk ) begin
           if (rst) begin
               writesp <= 4'h0;
               readsp <= 4'h0;
           end else begin
               if (wr && full)
                   writesp <= writesp;
               if (rd && empty)
                   readsp <= readsp;
               if (wr && ~full) begin
                   fifo[writesp] <= wr_in; writesp = writesp+1; end
               if (rd && ~empty) 
                    readsp <= readsp +1;
           end
       end
   
       assign rd_out = fifo[readsp];
endmodule


