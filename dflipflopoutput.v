`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:02:00 08/15/2022
// Design Name:   dflipflop
// Module Name:   D:/XILINK DSD/Tff/dflipflopoutput.v
// Project Name:  Tff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dflipflop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dflipflopoutput;

	// Inputs
	reg d;
	reg clk;
	reg rst;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	dflipflop uut (
		.d(d), 
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
	rst=0;d=0;
	#100;
	rst=0;d=1;
	#100;
	rst=1;d=0;
	#100;
	rst=0;d=1;
	#100;
	end

endmodule

