`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:19:13 08/14/2022
// Design Name:   decoder4to2
// Module Name:   D:/XILINK DSD/Tff/decoder4to2output.v
// Project Name:  Tff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder4to2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decoder2to4output;

	// Inputs
	reg [1:0] i;

	// Outputs
	wire y0;
	wire y1;
	wire y2;
	wire y3;

	// Instantiate the Unit Under Test (UUT)
	decoder2to4 uut (
		.i(i), 
		.y0(y0), 
		.y1(y1), 
		.y2(y2), 
		.y3(y3)
	);

	initial begin
		// Initialize Inputs
		i =2'b00;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
      i =2'b01;
		#100;
		i =2'b10;
		#100;
		i =2'b11;
		#100;

	end
      
endmodule

