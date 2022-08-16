`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:56:21 08/15/2022
// Design Name:   halfsubtractor
// Module Name:   D:/XILINK DSD/Tff/halfsubtractor_output.v
// Project Name:  Tff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: halfsubtractor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module halfsubtractor_output;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire diff;
	wire br;

	// Instantiate the Unit Under Test (UUT)
	halfsubtractor uut (
		.a(a), 
		.b(b), 
		.diff(diff), 
		.br(br)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
      a = 0;
		b = 1;
		#100;
		a = 1;
		b = 0;
		#100;
		a = 1;
		b = 1;
		#100;
	end
      
endmodule

