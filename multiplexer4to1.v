`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:43:45 08/12/2022 
// Design Name: 
// Module Name:    multiplexer4to1 
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
module multiplexer4to1(
    input j,
    input k,
    input l,
    input m,
    input [1:0]s,
    output y
    );
wire [1:0]n;
wire [3:0]t;
not n0(n[0],s[0]);
not n1(n[1],s[1]);
and a0(t[0],n[1],n[0],j);
and a1(t[1],n[1],s[0],k);
and a2(t[2],s[1],n[0],l);
and a3(t[3],s[1],s[0],m);
or (y,t[0],t[1],t[2],t[3]);


endmodule
