`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:09:11 08/15/2022
// Design Name:   siso
// Module Name:   D:/XILINK DSD/Tff/siso_output.v
// Project Name:  Tff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: siso
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module siso_output;

	// Inputs
	reg clk;
	reg si;

	// Outputs
	wire so;

	// Instantiate the Unit Under Test (UUT)
	siso uut (
		.clk(clk), 
		.si(si), 
		.so(so)
	);

	initial begin
		forever begin
		clk<=0;
		#50;
		clk<=1;
		#50;
		end
	end
      
	initial begin 
	si=1;
	#100;
	si=0;
	#100;
	si=0; 
	#100;
	si=1;
	#100;

	end
      
endmodule

