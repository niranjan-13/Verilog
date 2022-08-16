`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:56:00 08/03/2022 
// Design Name: 
// Module Name:    dff 
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
module dff(
    input d,
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
if(rst)
q=0;
else
begin
case(d)
0:q=0;
1:q=1;
endcase
end
qb=~q;
end
endmodule
