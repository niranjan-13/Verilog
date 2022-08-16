`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:17:36 08/14/2022 
// Design Name: 
// Module Name:    decoder4to2 
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
module decoder2to4(
    input [1:0]i,
    output y0,
    output y1,
    output y2,
    output y3
    );
wire [1:0]n;
not n0(n[0],i[0]);
not n1(n[1],i[1]);
and a0(y0,n[1],n[0]);
and a1(y1,n[1],i[0]);
and a2(y2,i[1],n[0]);
and a3(y3,i[1],i[0]);


endmodule
