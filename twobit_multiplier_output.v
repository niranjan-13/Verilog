`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:16:28 08/15/2022
// Design Name:   twobit_multiplier
// Module Name:   D:/XILINK DSD/Tff/twobit_multiplier_output.v
// Project Name:  Tff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: twobit_multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module twobit_multiplier_output;

	// Inputs
	reg [1:0] x;
	reg [1:0] y;

	// Outputs
	wire [3:0] m;

	// Instantiate the Unit Under Test (UUT)
	twobit_multiplier uut (
		.x(x), 
		.y(y), 
		.m(m)
	);

	initial begin
		// Initialize Inputs
		x = 2'b00;
		y = 2'b00;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

      x = 2'b01;
		y = 2'b01;
		#100;
		x = 2'b01;
		y = 2'b00;
		#100;
		x = 2'b00;
		y = 2'b10;
		#100;
		x = 2'b01;
		y = 2'b11;
		#100;
		x = 2'b10;
		y = 2'b10;
		#100;
		x = 2'b10;
		y = 2'b11;
		#100;
		x = 2'b11;
		y = 2'b11;
		#100;
		
		
	end
      
endmodule

