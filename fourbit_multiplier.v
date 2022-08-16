`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:28:30 08/15/2022 
// Design Name: 
// Module Name:    fourbit_multiplier 
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
module fourbit_multiplier(
    input [3:0]b,
    input [3:0]a,
    output [7:0]p

    );
wire [3:0]m;
wire [4:0]x;
wire [5:0]y;
wire [6:0]z;
wire [7:0]s[3:1];
assign m={4{a[0]}}&b[3:0];
assign x={4{a[1]}}&b[3:0];
assign y={4{a[2]}}&b[3:0];
assign z={4{a[3]}}&b[3:0];
assign s[1]=m+(x<<1);
assign s[2]=s[1]+(y<<2);
assign s[3]=s[2]+(z<<3);
assign p=s[3];



endmodule
