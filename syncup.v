`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:00:45 08/03/2022 
// Design Name: 
// Module Name:    syncup 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module sync_up4(
    input clk,
    input rst,
    output reg [3:0]q
    );
initial
begin
q=4'b0000;
end
always@(posedge clk)
begin
if(rst)
q<=4'b0000;
else
q<=q+1;
end
endmodule
