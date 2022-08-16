`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:26:24 08/15/2022
// Design Name:   threebit_multiplier
// Module Name:   D:/XILINK DSD/Tff/threebit_multiplier_output.v
// Project Name:  Tff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: threebit_multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module threebit_multiplier_output;

	// Inputs
	reg [2:0] b;
	reg [2:0] a;

	// Outputs
	wire [5:0] p;

	// Instantiate the Unit Under Test (UUT)
	threebit_multiplier uut (
		.b(b), 
		.a(a), 
		.p(p)
	);

	initial begin
		// Initialize Inputs
		b = 3'b000;
		a = 3'b010;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
      b = 3'b100;
		a = 3'b010;
		#100;
		b = 3'b011;
		a = 3'b111;
		#100
		b = 3'b111;
		a = 3'b111;
		#100; 

	end
      
endmodule

