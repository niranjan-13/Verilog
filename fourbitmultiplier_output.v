`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:31:32 08/15/2022
// Design Name:   fourbit_multiplier
// Module Name:   D:/XILINK DSD/Tff/fourbitmultiplier_output.v
// Project Name:  Tff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fourbit_multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fourbitmultiplier_output;

	// Inputs
	reg [3:0] b;
	reg [3:0] a;

	// Outputs
	wire [7:0] p;

	// Instantiate the Unit Under Test (UUT)
	fourbit_multiplier uut (
		.b(b), 
		.a(a), 
		.p(p)
	);

	initial begin
		// Initialize Inputs
		b = 4'b1000;
		a = 4'b0011;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
      
		b = 4'b1001;
		a = 4'b0011;
		#100; 
		b = 4'b1111;
		a = 4'b1111; 
		#100;
		b = 4'b1010;
		a = 4'b1010;
		#100;
		b = 4'b0010;
		a = 4'b0111;
		#100;

	end
      
endmodule

