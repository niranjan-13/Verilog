`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:54:16 08/15/2022
// Design Name:   srflipflop
// Module Name:   D:/XILINK DSD/Tff/srflipflop_output.v
// Project Name:  Tff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: srflipflop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module srflipflop_output;

	// Inputs
	reg s;
	reg r;
	reg clk;
	reg rst;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	srflipflop uut (
		.s(s), 
		.r(r), 
		.clk(clk), 
		.rst(rst), 
		.q(q), 
		.qb(qb)
	);

	initial begin
		// Initialize Inputs
		forever begin
		clk<=0;
		#50;
		clk<=1;
		#50;
		end
	end
initial begin
rst=0;s=0;r=0;
#100;
rst=0;s=0;r=1;
#100;
rst=1;s=1;r=0;
#100;
rst=0;s=1;r=0;
#100;
rst=0;s=1;r=1;
#100;
end

endmodule

