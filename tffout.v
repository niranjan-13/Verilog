`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:37:31 08/03/2022
// Design Name:   tff
// Module Name:   D:/XILINK DSD/Tff/tffout.v
// Project Name:  Tff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: tff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tffout;

	// Inputs
	reg t;
	reg clk;
	reg rst;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	tff uut (
		.t(t), 
		.clk(clk), 
		.rst(rst), 
		.q(q), 
		.qb(qb)
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
	rst=0;t=0;
	#100;
	rst=0;t=1;
	#100;
	rst=1;t=0; 
	#100;
	rst=0;t=1;
	#100;

	end
      
endmodule

