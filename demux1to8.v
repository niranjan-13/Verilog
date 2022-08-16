`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:18:19 08/14/2022 
// Design Name: 
// Module Name:    demux1to8 
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
module demux1to8(
    input i,
    input [2:0]s,
    output o0,
    output o1,
    output o2,
    output o3,
    output o4,
    output o5,
    output o6,
    output o7
    );
wire [2:0]n;
not n0(n[0],s[0]);
not n1(n[1],s[1]);
not n2(n[2],s[2]);
and a0(o0,n[2],n[1],n[0],i);
and a1(o1,n[2],n[1],s[0],i);
and a2(o2,n[2],s[1],n[0],i);
and a3(o3,n[2],s[1],s[0],i);
and a4(o4,s[2],n[1],n[0],i);
and a5(o5,s[2],n[1],s[0],i);
and a6(o6,s[2],s[1],n[0],i);
and a7(o7,s[2],s[1],s[0],i);


endmodule
