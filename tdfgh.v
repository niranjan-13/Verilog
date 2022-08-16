`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:25:41 08/16/2022
// Design Name:   binary_to_gray
// Module Name:   D:/XILINK DSD/Tff/tdfgh.v
// Project Name:  Tff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: binary_to_gray
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tdfgh;

	// Inputs
	reg [3:0] b;

	// Outputs
	wire [3:0] g;

	// Instantiate the Unit Under Test (UUT)
	binary_to_gray uut (
		.b(b), 
		.g(g)
	);

	initial begin
		// Initialize Inputs
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

