`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:23:39 01/10/2021
// Design Name:   AP
// Module Name:   E:/Adam/GitHubLocallReopsitory/EngineerSoftCPU/APCPU/AP_TB.v
// Project Name:  APCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: AP
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module AP_TB;

	// Inputs
	reg [3:0] APSet;
   reg clk;
	reg rst;
	// Outputs
	wire [2:0] APSel;

	// Instantiate the Unit Under Test (UUT)
	AP uut (
	   .clk(clk),
		.rst(rst),
		.APSet(APSet), 
		.APSel(APSel)
	);

	initial begin
		// Initialize Inputs
		APSet = 0;
      clk = 0;
		rst = clk;
		// Wait 100 ns for global reset to finish
		#100;
		rst = 1;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5
		rst = 0;
     
		   #5 clk = ~clk;
			APSet = 0;
			#5 clk = ~clk;
			#5 clk = ~clk;
			APSet = 1;
			#5 clk = ~clk;
			#5 clk = ~clk;
			APSet = 2;
			#5 clk = ~clk;
			#5 clk = ~clk;
			APSet = 3;
			#5 clk = ~clk;
			#5 clk = ~clk;
			APSet = 4;
			#5 clk = ~clk;
			#5 clk = ~clk;
			APSet = 5;
			#5 clk = ~clk;
			#5 clk = ~clk;
			APSet = 6;
			#5 clk = ~clk;
			#5 clk = ~clk;
			APSet = 7;
			#5 clk = ~clk;
			#5 clk = ~clk;
			APSet = 8;
			#5 clk = ~clk;
			#5 clk = ~clk;
			APSet = 0;
			#5 clk = ~clk;
			#5 clk = ~clk;
			forever
		  begin
			#5 clk = ~clk;
			#5 clk = ~clk;
		  end
		// Add stimulus here

	end
      
endmodule

