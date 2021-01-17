`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:37:51 01/13/2021
// Design Name:   MemoryController
// Module Name:   E:/Adam/GitHubLocallReopsitory/EngineerSoftCPU/APCPU/MemoryController_TB.v
// Project Name:  APCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MemoryController
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MemoryController_TB;

	// Inputs
	reg clk;
	reg rst;
	reg [31:0] PCAddressBus;
	reg PCGetNewInstruction;
	reg [31:0] ALUAddressBus;
	reg [1:0] MemoryIOBus;
	reg ExternalExchangeReady;

	// Outputs
	wire [31:0] InstructionBus;
	wire ValidMemoryData;
	wire [2:0] ExternalDrive;

	// Bidirs
	wire [31:0] ExternalDataBus;
	wire [31:0] ExternalAddressBus;
	wire [31:0] InternalDataBus;
 
   reg [31:0] EDB, EAB, IDB;
	// Instantiate the Unit Under Test (UUT)
	MemoryController uut (
		.clk(clk), 
		.rst(rst),
		.ExternalDataBus(ExternalDataBus), 
		.ExternalAddressBus(ExternalAddressBus), 
		.InstructionBus(InstructionBus), 
		.PCAddressBus(PCAddressBus), 
		.PCGetNewInstruction(PCGetNewInstruction), 
		.InternalDataBus(InternalDataBus), 
		.ALUAddressBus(ALUAddressBus), 
		.MemoryIOBus(MemoryIOBus), 
		.ValidMemoryData(ValidMemoryData), 
		.ExternalDrive(ExternalDrive), 
		.ExternalExchangeReady(ExternalExchangeReady)
	);

  assign ExternalDataBus = EDB;
  //assign InternalDataBus = IDB;
	initial begin
		// Initialize Inputs
		clk = 0;
		PCAddressBus = 0;
		PCGetNewInstruction = 0;
		ALUAddressBus = 0;
		MemoryIOBus = 0;
		ExternalExchangeReady = 0;

		// Wait 100 ns for global reset to finish
		#100;
        rst = 1;
		  clk = ~clk;
		  #5
		  rst = 0;
		  clk = ~clk;
		// Add stimulus here
	//	NEXT INSTRUCTION PROCEDURE:
 forever
		  begin
		   #5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			PCGetNewInstruction = 1;
			PCAddressBus = 540;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
         ExternalExchangeReady = 1'b1;
			EDB = 339;
			#5 clk = ~clk;
			#5 clk = ~clk;
			PCGetNewInstruction = 0;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
		  end

	end
      
endmodule

/*
NEXT INSTRUCTION PROCEDURE:
 forever
		  begin
		   #5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			PCGetNewInstruction = 1;
			PCAddressBus = 540;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
         ExternalExchangeReady = 1'b1;
			EDB = 339;
			#5 clk = ~clk;
			#5 clk = ~clk;
			PCGetNewInstruction = 0;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
		  end
MEMORY READ PROCEDURE:		  
		  forever
		  begin
		   #5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			MemoryIOBus = 2'b01;
			ALUAddressBus = 32'd 4467;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			ExternalExchangeReady = 1'd1;
			EDB = 32'd 555;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			end
//WRITE MEMORY PROCEDURE:
      forever
		  begin
		   #5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			MemoryIOBus = 2'b10;
			ALUAddressBus = 32'd 4467;
			IDB = 32'd 555;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			ExternalExchangeReady = 1'd1;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			end
*/