`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:05:46 08/15/2022 
// Design Name: 
// Module Name:    halfadd 
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
module halfadd(
	input a,
	input b,
	output s,
	output c
    );
	xor(s,a,b);
	and(c,a,b);


endmodule
