`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:53:54 08/15/2022 
// Design Name: 
// Module Name:    halfsubstractor 
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
module halfsubtractor(
    input a,
    input b,
    output diff,
    output br
    );
wire t;
xor (diff,a,b);
not (t,a);
and (br,t,b);

endmodule
