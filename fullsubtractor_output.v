`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:03:11 08/15/2022
// Design Name:   fullsubtractor
// Module Name:   D:/XILINK DSD/Tff/fullsubtractor_output.v
// Project Name:  Tff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fullsubtractor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fullsubtractor_output;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire diff;
	wire br;

	// Instantiate the Unit Under Test (UUT)
	fullsubtractor uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.diff(diff), 
		.br(br)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
      a = 0;
		b = 0;
		c = 1;
		#100;
		a = 0;
		b = 1;
		c = 0;
		#100;
		a = 0;
		b = 1;
		c = 1;
		#100;
		a = 1;
		b = 0;
		c = 0;
		#100;
		a = 1;
		b = 0;
		c = 1;
		#100;
		a = 1;
		b = 1;
		c = 0;
		#100;
		a = 1;
		b = 1;
		c = 1;
		#100;
	
	end
      
endmodule

