`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:48:20 08/12/2022
// Design Name:   multiplexer4to1
// Module Name:   D:/XILINK DSD/Tff/mux4to1gatelevelmodel_output.v
// Project Name:  Tff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multiplexer4to1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux4to1output;

	// Inputs
	reg j;
	reg k;
	reg l;
	reg m;
	reg [1:0] s;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	multiplexer4to1 uut (
		.j(j), 
		.k(k), 
		.l(l), 
		.m(m), 
		.s(s), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		j = 1;
		k = 0;
		l = 0;
		m = 0;
		s = 2'b00;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
      j = 0;
		k = 1;
		l = 0;
		m = 0;
		s = 2'b01;
      #100
		
		j = 1;
		k = 0;
		l = 0;
		m = 0;
		s = 2'b10;
      #100


      j = 1;
		k = 0;
		l = 0;
		m = 0;
		s = 2'b11;

	end
      
endmodule

