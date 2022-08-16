`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:34:21 08/03/2022 
// Design Name: 
// Module Name:    tff 
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
module tff(
    input t,
    input clk,
    input rst,
    output reg q,
    output reg qb
    );
initial 
begin
	q=1'b0;
	qb=~q;
end
always@(posedge clk)
begin
if (rst)
q=0;
else
begin
case(t)
	0:q=q;
	1:q=qb;
endcase
end
qb=~q;
end
endmodule


