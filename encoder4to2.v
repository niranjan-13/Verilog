`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:42:54 08/14/2022 
// Design Name: 
// Module Name:    encoder4to2 
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
module encoder4to2(
    input i3,
    input i2,
    input i1,
    input i0,
    output [1:0]y
    );
or o1(y[0],i1,i3);
or o2(y[1],i2,i3);


endmodule
