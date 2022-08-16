`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:54:13 08/14/2022
// Design Name:   encoder8to3
// Module Name:   D:/XILINK DSD/Tff/encoder8to1output.v
// Project Name:  Tff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: encoder8to3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module encoder8to3output;

	// Inputs
	reg i7;
	reg i6;
	reg i5;
	reg i4;
	reg i3;
	reg i2;
	reg i1;
	reg i0;

	// Outputs
	wire [2:0]y;

	// Instantiate the Unit Under Test (UUT)
	encoder8to3 uut (
		.i7(i7), 
		.i6(i6), 
		.i5(i5), 
		.i4(i4), 
		.i3(i3), 
		.i2(i2), 
		.i1(i1), 
		.i0(i0), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		i7 = 0;
		i6 = 0;
		i5 = 0;
		i4 = 0;
		i3 = 0;
		i2 = 0;
		i1 = 0;
		i0 = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
      i7 = 0;
		i6 = 0;
		i5 = 0;
		i4 = 0;
		i3 = 0;
		i2 = 0;
		i1 = 1;
		i0 = 0;
      #100
		i7 = 0;
		i6 = 0;
		i5 = 0;
		i4 = 0;
		i3 = 0;
		i2 = 1;
		i1 = 0;
		i0 = 0;
      #100
		i7 = 0;
		i6 = 0;
		i5 = 0;
		i4 = 0;
		i3 = 1;
		i2 = 0;
		i1 = 0;
		i0 = 0;
      #100 
   	i7 = 0;
		i6 = 0;
		i5 = 0;
		i4 = 1;
		i3 = 0;
		i2 = 0;
		i1 = 0;
		i0 = 0;
      #100	
		i7 = 0;
		i6 = 0;
		i5 = 1;
		i4 = 0;
		i3 = 0;
		i2 = 0;
		i1 = 0;
		i0 = 0;
      #100
		i7 = 0;
		i6 = 1;
		i5 = 0;
		i4 = 0;
		i3 = 0;
		i2 = 0;
		i1 = 0;
		i0 = 0;
      #100
		i7 = 1;
		i6 = 0;
		i5 = 0;
		i4 = 0;
		i3 = 0;
		i2 = 0;
		i1 = 0;
		i0 = 0;
      #100
	end
      
endmodule

