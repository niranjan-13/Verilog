`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:04:49 08/14/2022
// Design Name:   demux1to4
// Module Name:   D:/XILINK DSD/Tff/demux1to4output.v
// Project Name:  Tff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demux1to4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module demux1to4output;
// Inputs
	reg a;
	reg [1:0] s;

	// Outputs
	wire y0;
	wire y1;
	wire y2;
	wire y3;

	// Instantiate the Unit Under Test (UUT)
	demux1to4 uut (
		.a(a), 
		.s(s), 
		.y0(y0), 
		.y1(y1), 
		.y2(y2), 
		.y3(y3)
	);

	initial begin
		// Initialize Inputs
		a = 1;
		s = 2'b00;
		#100;
		s = 2'b01;
		#100;
		s = 2'b10;
		#100;
		s = 2'b11;
		#100;
        
		// Add stimulus here

	end
      
endmodule
