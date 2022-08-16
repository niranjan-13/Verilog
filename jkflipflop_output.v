`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:48:35 08/16/2022
// Design Name:   jkflipflop
// Module Name:   D:/XILINK DSD/Tff/jkflipflop_output.v
// Project Name:  Tff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: jkflipflop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module jkflipflop_output;

	// Inputs
	reg j;
	reg k;
	reg clk;
	reg rst;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	jkflipflop uut (
		.j(j), 
		.k(k), 
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
rst=0;j=0;k=0;
#100;
rst=0;j=0;k=1;
#100;
rst=1;j=1;k=0;
#100;
rst=0;j=1;k=0;
#100;
rst=0;j=1;k=1;
#100;

end
      
endmodule

