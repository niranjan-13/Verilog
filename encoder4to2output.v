`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:44:38 08/14/2022
// Design Name:   encoder4to2
// Module Name:   D:/XILINK DSD/Tff/encoder4to2output.v
// Project Name:  Tff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: encoder4to2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module encoder4to2output;

	// Inputs
	reg i3;
	reg i2;
	reg i1;
	reg i0;

	// Outputs
	wire [1:0] y;

	// Instantiate the Unit Under Test (UUT)
	encoder4to2 uut (
		.i3(i3), 
		.i2(i2), 
		.i1(i1), 
		.i0(i0), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		i3 = 0;
		i2 = 0;
		i1 = 0;
		i0 = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

		i3 = 0;
		i2 = 0;
		i1 = 1;
		i0 = 0;
		#100;
		i3 = 0;
		i2 = 1;
		i1 = 0;
		i0 = 0;
		#100;
		i3 = 1;
		i2 = 0;
		i1 = 0;
		i0 = 0;
		#100;


	end
      
endmodule

