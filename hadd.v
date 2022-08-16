`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:13:50 08/15/2022
// Design Name:   halfadd
// Module Name:   D:/XILINK DSD/Tff/hadd.v
// Project Name:  Tff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: halfadd
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module hadd;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire s;
	wire c;

	// Instantiate the Unit Under Test (UUT)
	halfadd uut (
		.a(a), 
		.b(b), 
		.s(s), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		#100;
      a = 0;
		b = 1;
		#100;
		a = 1;
		b = 0;
		#100;
      a = 1;
		b = 1;
		#100;
		a = 0;
		b = 0;
		#100;
      a = 0;
		b = 1;
		#100;
		a = 1;
		b = 0;
		#100;
      a = 1;
		b = 1;
		#100;
		
        
		  
		// Add stimulus here

	end
      
endmodule

