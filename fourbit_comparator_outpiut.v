`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:16:19 08/15/2022
// Design Name:   fourbit_comparator_output
// Module Name:   D:/XILINK DSD/Tff/fourbit_comparator_outpiut.v
// Project Name:  Tff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fourbit_comparator_output
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fourbit_comparator_output;

	// Inputs
	reg [3:0] x;
	reg [3:0] y;

	// Outputs
	wire g;
	wire l;
	wire e;

	// Instantiate the Unit Under Test (UUT)
	fourbit_comparator_output uut (
		.x(x), 
		.y(y), 
		.g(g), 
		.l(l), 
		.e(e)
	);

	initial begin
		// Initialize Inputs
		x = 4'b1000;
		y = 4'b1110;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
      x = 4'b1111;
		y = 4'b1111;
		#100;
		x = 4'b1000;
		y = 4'b0100;
		#100;
		x = 4'b1100;
		y = 4'b1100;
		#100; 
      x = 4'b0111;
		y = 4'b1111;
		#100; 
		x = 4'b0111;
		y = 4'b0011;
		#100; 

	end
      
endmodule

