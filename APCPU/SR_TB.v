`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:39:20 01/11/2021
// Design Name:   SR
// Module Name:   E:/Adam/GitHubLocallReopsitory/EngineerSoftCPU/APCPU/SR_TB.v
// Project Name:  APCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SR
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SR_TB;

	// Inputs
	reg clk;
	reg rst;
	reg [7:0] SRSet;

	// Outputs
	wire [7:0] SRData;
   
	reg [7:0] SRRead; // To check if readings are 1 cycle delayed
	// Instantiate the Unit Under Test (UUT)
	SR uut (
		.clk(clk), 
		.rst(rst),
		.SRSet(SRSet), 
		.SRData(SRData)
	);
    
	initial begin
		// Initialize Inputs
		clk = 0;
		SRSet = 0;
      rst = 0;
		// Wait 100 ns for global reset to finish
		#100;
        rst = 1;
		  #5
		  rst = 0;
		// Add stimulus here
		  forever
		  begin
		   #5 clk = ~clk;
			SRSet = 0;
			SRRead = SRData;
			#5 clk = ~clk;
			#5 clk = ~clk;
			SRSet = 1;
			SRRead = SRData;
			#5 clk = ~clk;
			#5 clk = ~clk;
			SRSet = 2;
			SRRead = SRData;
			#5 clk = ~clk;
			#5 clk = ~clk;
			SRSet = 3;
			SRRead = SRData;
			#5 clk = ~clk;
			#5 clk = ~clk;
			SRSet = 4;
			SRRead = SRData;
			#5 clk = ~clk;
			#5 clk = ~clk;
			SRSet = 5;
			SRRead = SRData;
			#5 clk = ~clk;
			#5 clk = ~clk;
			SRSet = 6;
			SRRead = SRData;
			#5 clk = ~clk;
			#5 clk = ~clk;
			SRSet = 7;
			SRRead = SRData;
			#5 clk = ~clk;
			#5 clk = ~clk;
			SRSet = 8;
			SRRead = SRData;
			#5 clk = ~clk;
			#5 clk = ~clk;
         end
	end
      
endmodule

