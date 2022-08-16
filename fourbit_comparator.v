`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:24:52 08/15/2022 
// Design Name: 
// Module Name:    fourbit_comparator 
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
module fourbit_comparator(
    input [3:0]x,
    input [3:0]y,
    output reg g,
    output reg l,
    output reg e
    );
always@(x,y)
begin
if (x>y)
begin
g=1;
l=0;
e=0;
end
else if(x<y)
begin
g=0;
l=1;
e=0;
end
else
begin
g=0;
l=0;
e=1;
end
end


endmodule
