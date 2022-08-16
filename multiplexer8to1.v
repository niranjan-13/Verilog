`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:32:03 08/13/2022 
// Design Name: 
// Module Name:    multiplexer8to1 
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
module multiplexer8to1(
    input i0,
    input i1,
    input i2,
    input i3,
    input i4,
    input i5,
    input i6,
    input i7,
    input [2:0] s,
    output y
    );
wire [2:0]n;
wire [7:0]t;
not n0(n[0],s[0]);
not n1(n[1],s[1]);
not n2(n[2],s[2]);
and ag0(t[0],n[2],n[1],n[0],i0);
and ag1(t[1],n[2],n[1],s[0],i1);
and ag2(t[2],n[2],s[1],n[0],i2);
and ag3(t[3],n[2],s[1],s[0],i3);
and ag4(t[4],s[2],n[1],n[0],i4);
and ag5(t[5],s[2],n[1],s[0],i5);
and ag6(t[6],s[2],s[1],n[0],i6);
and ag7(t[7],s[2],s[1],s[0],i7);
or (y,t[0],t[1],t[2],t[3],t[4],t[5],t[6],t[7]);


endmodule
