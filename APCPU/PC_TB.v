`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:05:23 01/11/2021
// Design Name:   PC
// Module Name:   E:/Adam/GitHubLocallReopsitory/EngineerSoftCPU/APCPU/PC_TB.v
// Project Name:  APCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PC_TB;

	// Inputs
	reg clk;
	reg rst;
	reg [31:0] PCSet;
	reg [2:0] PCDrive;

	// Outputs
	wire [31:0] PCAddr;
	wire GetInstruction;

	// Instantiate the Unit Under Test (UUT)
	PC uut (
		.clk(clk), 
		.rst(rst),
		.PCSet(PCSet), 
		.PCDrive(PCDrive), 
		.PCAddr(PCAddr), 
		.GetInstruction(GetInstruction)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		PCSet = 0;
		PCDrive = 0;
      rst = 0;
		// Wait 100 ns for global reset to finish
		#100;
        rst = 1;
		  #5 clk = ~clk;
		  #5 clk = ~clk;
		  #5 clk = ~clk;
		  #5 clk = ~clk;
		  rst = 0;
		  #5 clk = ~clk;
		  #5 clk = ~clk;
		// Add stimulus here
       
		   #5 clk = ~clk;
			PCDrive = 3'b000;
			PCSet = 10;
			#5 clk = ~clk;
			#5 clk = ~clk;
			PCDrive = 3'b011;
			PCSet = 10;
			#5 clk = ~clk;
			#5 clk = ~clk;
			PCDrive = 3'b000;
			PCSet = 25;
			#5 clk = ~clk;
			#5 clk = ~clk;
			PCDrive = 3'b001;
			PCSet = 30;
			#5 clk = ~clk;
			#5 clk = ~clk;
			PCDrive = 3'b010;
			PCSet = 30;
			#5 clk = ~clk;
			#5 clk = ~clk;
			PCDrive = 3'b100;
			PCSet = 33;
			forever
		  begin
			#5 clk = ~clk;
			#5 clk = ~clk;
         end
	end
      
endmodule

