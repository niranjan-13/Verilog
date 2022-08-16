`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:08:06 08/15/2022
// Design Name:   twobit_comparator
// Module Name:   D:/XILINK DSD/Tff/twobit_comparator_output.v
// Project Name:  Tff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: twobit_comparator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module twobit_comparator_output;

	// Inputs
	reg [1:0]x;
	reg [1:0]y;

	// Outputs
	wire g;
	wire l;
	wire e;

	// Instantiate the Unit Under Test (UUT)
	twobit_comparator uut (
		.x(x), 
		.y(y), 
		.g(g), 
		.l(l), 
		.e(e)
	);

	initial begin
		// Initialize Inputs
		x = 2'b00;
		y = 2'b10;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
     
      x = 2'b11;
		y = 2'b11;
		#100;
		x = 2'b10;
		y = 2'b01;
		#100;
		x = 2'b00;
		y = 2'b00;
		#100; 
      x = 2'b01;
		y = 2'b11;
		#100;
		x = 2'b11;
		y = 2'b01;
		#100; 

	end
      
endmodule

