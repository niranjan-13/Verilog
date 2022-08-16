`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:45:36 08/16/2022 
// Design Name: 
// Module Name:    jkflipflop 
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
module jkflipflop(
    input j,
    input k,
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
case({j,k})
2'b00:q=q;
2'b01:q=0;
2'b10:q=1;
2'b11:q=qb;
endcase
end
qb=~q;
end

endmodule
