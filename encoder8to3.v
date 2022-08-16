`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:52:45 08/14/2022 
// Design Name: 
// Module Name:    encoder8to3 
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
module encoder8to3(
    input i7,
    input i6,
    input i5,
    input i4,
    input i3,
    input i2,
    input i1,
    input i0,
    output [2:0]y
    );
or o1(y[0],i1,i3,i5,i7);
or o2(y[1],i2,i3,i6,i7);
or o3(y[2],i4,i5,i6,i7);


endmodule
