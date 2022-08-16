`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:46:56 08/15/2022
// Design Name:   fulladder
// Module Name:   D:/XILINK DSD/Tff/fulladder_output.v
// Project Name:  Tff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fulladder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fulladder_output;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire sum;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	fulladder uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.sum(sum), 
		.carry(carry)
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

