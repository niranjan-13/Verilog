`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:59:18 08/15/2022 
// Design Name: 
// Module Name:    onebit_comparator 
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
module onebit_comparator(
    input x,
    input y,
    output g,
    output l,
    output e
    );
wire [1:0]t;
not n1(t[0],x);
not n2(t[1],y);
xnor (e,x,y);
and a1(l,t[0],y);
and a2(g,t[1],x);


endmodule
