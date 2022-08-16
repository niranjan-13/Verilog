`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:20:07 08/14/2022
// Design Name:   demux1to8
// Module Name:   D:/XILINK DSD/Tff/demux1to8output.v
// Project Name:  Tff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demux1to8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module demux1to8output;
// Inputs
	reg i;
	reg [2:0]s;

	// Outputs
	wire o0;
	wire o1;
	wire o2;
	wire o3;
	wire o4;
	wire o5;
	wire o6;
	wire o7;

	// Instantiate the Unit Under Test (UUT)
	demux1to8 uut (
		.i(i), 
		.s(s), 
		.o0(o0), 
		.o1(o1), 
		.o2(o2), 
		.o3(o3), 
		.o4(o4), 
		.o5(o5), 
		.o6(o6), 
		.o7(o7)
	);

	initial begin
		// Initialize Inputs
		i = 1;
		s = 3'b000;
		#100;
		s = 3'b001;
		#100;
		s = 3'b010;
		#100;
		s = 3'b011;
		#100;
		i = 1;
		s = 3'b100;
		#100;
		s = 3'b101;
		#100;
		s = 3'b110;
		#100;
		s = 3'b111;
		#100;
	end
      
endmodule
