`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:34:12 01/11/2021
// Design Name:   GPReg
// Module Name:   E:/Adam/GitHubLocallReopsitory/EngineerSoftCPU/APCPU/GPReg_TB.v
// Project Name:  APCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: GPReg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module GPReg_TB;

	// Inputs
	reg clk;
	reg rst;
	reg [2:0] SelX;
	reg [2:0] SelY;
	reg [2:0] SelZ;
	reg [1:0] MemInstruction;
	reg [31:0] MemData;

	// Outputs
	wire [31:0] A;
	wire [31:0] B;

   //reg [31:0] Accu [0:7];
	// Instantiate the Unit Under Test (UUT)
	GPReg uut (
		.clk(clk), 
		.rst(rst),
		.SelX(SelX), 
		.SelY(SelY), 
		.SelZ(SelZ), 
		.MemInstruction(MemInstruction), 
		.MemData(MemData), 
		.A(A), 
		.B(B)
	);
   //assign Accu = Accumulator;
	initial begin
		// Initialize Inputs
		clk = 0;
		SelX = 0;
		SelY = 0;
		SelZ = 0;
		MemInstruction = 0;
		MemData = 0;
      rst = clk;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
         rst = 1;
			#5
			rst = 0;
		   #5 clk = ~clk;
			SelX = 3'b000;
			SelY = 3'b000;
			SelZ = 3'b000;
			MemInstruction = 0;
		   MemData = 0;
			#5 clk = ~clk;
			#5 clk = ~clk;
			
			SelX = 3'b000;
			SelY = 3'b000;
			SelZ = 3'b000;
			MemInstruction = 2'b11;
		   MemData = 55;
			#5 clk = ~clk;
			#5 clk = ~clk;
			
			SelX = 3'b000;
			SelY = 3'b000;
			SelZ = 3'b001;
			MemInstruction = 2'b11;
		   MemData = 44;
			#5 clk = ~clk;
			#5 clk = ~clk;
			
			SelX = 3'b000;
			SelY = 3'b000;
			SelZ = 3'b010;
			MemInstruction = 2'b11;
		   MemData = 37;
			#5 clk = ~clk;
			#5 clk = ~clk;
			
			SelX = 3'b001;
			SelY = 3'b010;
			SelZ = 3'b000;
			MemInstruction = 2'b01;
		   MemData = 55;
			#5 clk = ~clk;
			#5 clk = ~clk;
			
         
	end
      
endmodule

