`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:43:27 08/15/2022 
// Design Name: 
// Module Name:    binary_to_gray 
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
module binary_to_gray(
     input [3:0]b,
    output [3:0]g

    );
assign g[3]=b[3];
xor x1(g[2],b[3],b[2]);
xor x2(g[1],b[2],b[1]);
xor x3(g[0],b[1],b[0]);

endmodule
