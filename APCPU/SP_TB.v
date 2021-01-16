`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:32:48 01/11/2021
// Design Name:   SP
// Module Name:   E:/Adam/GitHubLocallReopsitory/EngineerSoftCPU/APCPU/SP_TB.v
// Project Name:  APCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SP
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SP_TB;

	// Inputs
	reg clk;
	reg rst;
	reg [31:0] SPSet;
	reg [1:0] SPDrive;

	// Outputs
	wire [31:0] SPOutput;

	// Instantiate the Unit Under Test (UUT)
	SP uut (
		.clk(clk), 
		.rst(rst),
		.SPSet(SPSet), 
		.SPDrive(SPDrive), 
		.SPOutput(SPOutput)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		SPSet = 0;
		SPDrive = 0;
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
			SPDrive = 2'b00;
			SPSet = 5791;
			#5 clk = ~clk;
			#5 clk = ~clk;
			SPDrive = 2'b11;
			SPSet = 5791;
			#5 clk = ~clk;
			#5 clk = ~clk;
			SPDrive = 2'b00;
			SPSet = 7894;
			#5 clk = ~clk;
			#5 clk = ~clk;
			SPDrive = 2'b01;
			SPSet = 7894;
			#5 clk = ~clk;
			#5 clk = ~clk;
			SPDrive = 2'b01;
			SPSet = 7894;
			#5 clk = ~clk;
			#5 clk = ~clk;
			SPDrive = 2'b10;
			SPSet = 7894;
			#5 clk = ~clk;
			#5 clk = ~clk;
         end
	end
      
endmodule

