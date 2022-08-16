`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:01:38 08/15/2022 
// Design Name: 
// Module Name:    fullsubtractor 
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
module fullsubtractor(
    input a,
    input b,
    input c,
    output diff,
    output br
    );
wire [4:0]t;
xor x1(t[0],a,b);
xor x2(diff,t[0],c);
not n1(t[1],t[0]);
not n2(t[2],a);
and a1(t[3],t[2],b);
and a2(t[4],t[1],c);
or (br,t[3],t[4]);


endmodule
