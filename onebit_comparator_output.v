`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:00:49 08/15/2022
// Design Name:   onebit_comparator
// Module Name:   D:/XILINK DSD/Tff/onebit_comparator_output.v
// Project Name:  Tff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: onebit_comparator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module onebit_comparator_output;

	// Inputs
	reg x;
	reg y;

	// Outputs
	wire g;
	wire l;
	wire e;

	// Instantiate the Unit Under Test (UUT)
	onebit_comparator uut (
		.x(x), 
		.y(y), 
		.g(g), 
		.l(l), 
		.e(e)
	);

	initial begin
		// Initialize Inputs
		x = 0;
		y = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
      x = 0;
		y = 1;
		#100;
		x = 1;
		y = 0;
		#100;
		x = 1;
		y = 1;
		#100;

	end
      
endmodule

