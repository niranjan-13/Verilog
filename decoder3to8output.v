`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:32:11 08/14/2022
// Design Name:   decoder3to8
// Module Name:   D:/XILINK DSD/Tff/decoder3to8output.v
// Project Name:  Tff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder3to8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decoder3to8output;

	// Inputs
	reg [2:0] i;

	// Outputs
	wire y0;
	wire y1;
	wire y2;
	wire y3;
	wire y4;
	wire y5;
	wire y6;
	wire y7;

	// Instantiate the Unit Under Test (UUT)
	decoder3to8 uut (
		.i(i), 
		.y0(y0), 
		.y1(y1), 
		.y2(y2), 
		.y3(y3), 
		.y4(y4), 
		.y5(y5), 
		.y6(y6), 
		.y7(y7)
	);

	initial begin
		// Initialize Inputs
		i =3'b000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
      i =3'b001;
		#100;
		i =3'b010;
		#100;
		i =3'b011;
		#100;
		i =3'b100;
		#100;
      i =3'b101;
		#100;
		i =3'b110;
		#100;
		i =3'b111;
		#100;

	end
      
endmodule

