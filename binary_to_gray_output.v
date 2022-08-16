`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:44:30 08/15/2022
// Design Name:   binary_to_gray
// Module Name:   D:/XILINK DSD/Tff/binary_to_gray_output.v
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

module binary_to_gray_output;

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
		b = 4'd0;

		// Wait 10 ns for global reset to finish
		#10;
        
		// Add stimulus here
		b = 4'd1;
		#10;
		b = 4'd2;
		#10;
		b = 4'd3;
		#10;
		b = 4'd4;
		#10;
		b = 4'd5;
		#10;
		b = 4'd6;
		#10;
		b = 4'd7;
		#10;
		b = 4'd8;
		#10;
		b = 4'd9;
		#10;
		b = 4'd10;
		#10;
		b = 4'd11;
		#10;
		b = 4'd12;
		#10;
		b = 4'd13;
		#10;
		b = 4'd14;
		#10;
		b = 4'd15;
		#10; 

	end
      
endmodule

