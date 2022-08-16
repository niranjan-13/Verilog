`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:24:32 08/15/2022 
// Design Name: 
// Module Name:    threebit_multiplier 
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
module threebit_multiplier(
    input [2:0]b,
    input [2:0]a,
    output [5:0]p

    );
wire [2:0]m;
wire [3:0]x;
wire [4:0]y;
wire [5:0]s[2:1];
assign m={3{a[0]}}&b[2:0];
assign x={3{a[1]}}&b[2:0];
assign y={3{a[2]}}&b[2:0];
assign s[1]=m+(x<<1);
assign s[2]=s[1]+(y<<2);
assign p=s[2];


endmodule
