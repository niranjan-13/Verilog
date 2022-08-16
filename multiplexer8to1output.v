`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:33:53 08/13/2022
// Design Name:   multiplexer8to1
// Module Name:   D:/XILINK DSD/Tff/multiplexer8to1output.v
// Project Name:  Tff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multiplexer8to1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module multiplexer8to1output;

	// Inputs
	reg i0;
	reg i1;
	reg i2;
	reg i3;
	reg i4;
	reg i5;
	reg i6;
	reg i7;
	reg [2:0]s;
	wire y;
	

	// Instantiate the Unit Under Test (UUT)
	multiplexer8to1 uut (
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.i4(i4), 
		.i5(i5),
		.i6(i6), 
		.i7(i7),
		.s(s), 
		.y(y),

	);

	initial begin
		// Initialize Inputs
		i0 = 1;
		i1 = 0;
		i2 = 0;
		i3 = 0;
		i4 = 0;
		i5 = 0;
		i6 = 0;
		i7 = 0;
		s = 3'b000;

		// Wait 100 ns for global reset to finish
		#100;
        
		i0 = 0;
		i1 = 1;
		i2 = 0;
		i3 = 0;
		i4 = 0;
		i5 = 0;
		i6 = 0;
		i7 = 0;
		s = 3'b001;
		#100;
		i0 = 0;
		i1 = 0;
		i2 = 1;
		i3 = 0;
		i4 = 0;
		i5 = 0;
		i6 = 0;
		i7 = 0;
		s = 3'b010;
		#100;
		i0 = 0;
		i1 = 0;
		i2 = 0;
		i3 = 1;
		i4 = 0;
		i5 = 0;
		i6 = 0;
		i7 = 0;
		s = 3'b011;
		#100;
		i0 = 0;
		i1 = 0;
		i2 = 0;
		i3 = 0;
		i4 = 1;
		i5 = 0;
		i6 = 0;
		i7 = 0;
		s = 3'b100;
		#100;
		i0 = 0;
		i1 = 0;
		i2 = 0;
		i3 = 0;
		i4 = 0;
		i5 = 1;
		i6 = 0;
		i7 = 0;
		s = 3'b101;
		#100;
		i0 = 0;
		i1 = 0;
		i2 = 0;
		i3 = 0;
		i4 = 0;
		i5 = 0;
		i6 = 1;
		i7 = 0;
		s = 3'b110;
		#100;
		i0 = 0;
		i1 = 0;
		i2 = 0;
		i3 = 0;
		i4 = 0;
		i5 = 0;
		i6 = 0;
		i7 = 1;
		s = 3'b111;
		#100;
		// Add stimulus here

	end
      
endmodule

