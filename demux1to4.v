`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:56:31 08/13/2022 
// Design Name: 
// Module Name:    demux1to4 
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
module demux1to4(
       input a,
    input [1:0]s,
    output y0,
    output y1,
    output y2,
    output y3
    );
wire [1:0]n;
not n0(n[0],s[0]);
not n1(n[1],s[1]);
and a0(y0,n[1],n[0],a);
and a1(y1,n[1],s[0],a);
and a2(y2,s[1],n[0],a);
and a3(y3,s[1],s[0],a);
endmodule
