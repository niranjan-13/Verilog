`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:29:20 08/14/2022 
// Design Name: 
// Module Name:    decoder3to8 
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
module decoder3to8(
    input [2:0]i,
    output y0,
    output y1,
    output y2,
    output y3,
    output y4,
    output y5,
    output y6,
    output y7
    );
wire [2:0]n;
not n0(n[0],i[0]);
not n1(n[1],i[1]);
not n2(n[2],i[2]);
and a0(y0,n[2],n[1],n[0]);
and a1(y1,n[2],n[1],i[0]);
and a2(y2,n[2],i[1],n[0]);
and a3(y3,n[2],i[1],i[0]);
and a4(y4,i[2],n[1],n[0]);
and a5(y5,i[2],n[1],i[0]);
and a6(y6,i[2],i[1],n[0]);
and a7(y7,i[2],i[1],i[0]);



endmodule
