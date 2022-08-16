`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:13:09 08/15/2022 
// Design Name: 
// Module Name:    twobit_multiplier 
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
module twobit_multiplier(
    input [1:0]x,
    input [1:0]y,
    output [3:0]m
    );
assign m[0]=x[0]&y[0];
assign m[1]=(x[1]&y[0])^(x[0]&y[1]);
assign m[2]=((x[1]&y[0])&(x[0]&y[1]))^(x[1]&y[1]);
assign m[3]=((x[1]&y[0])&(x[0]&y[1]))&(x[1]&y[1]);


endmodule
