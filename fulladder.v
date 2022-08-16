`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:40:37 08/15/2022 
// Design Name: 
// Module Name:    fulladder 
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
module fulladder(
    input a,
    input b,
    input c,
    output sum ,
    output carry
    );
	 wire [2:0]t;
xor x1(t[0],a,b);
xor x2(sum,t[0],c);
and a1(t[1],t[0],c);
and a2(t[2],a,b);
or (carry,t[1],t[2]);

endmodule
