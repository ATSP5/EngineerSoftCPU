// Verilog test fixture created from schematic E:\Adam\GitHubLocallReopsitory\EngineerSoftCPU\APCPU\MainCPU.sch - Sun Jan 17 21:13:48 2021

`timescale 1ns / 1ps

module MainCPU_MainCPU_sch_tb();

reg clk;
	reg rst;
	reg [31:0] PCAddressBus;
	reg NewInstruction;
	reg [31:0] ALUAddressBus;
	reg [1:0] MemIO;
	reg ExternalExchangeReady;

	// Outputs
	wire [31:0] InstructionBus;
	wire ValidMemoryData;
	wire [2:0] ExternalDrive;

	// Bidirs
	wire [31:0] ExternalDataBus;
	wire [31:0] ExternalAddressBus;
	wire [31:0] InternalDataBus;
	// Instantiate the UUT
   MainCPU UUT (
		.clk(clk), 
		.rst(rst),
		.ExternalDataBus(ExternalDataBus), 
		.ExternalAddressBus(ExternalAddressBus), 
		.InstructionBus(InstructionBus), 
		.PCAddressBus(PCAddressBus), 
		.NewInstruction(NewInstruction), 
		.InternalDataBus(InternalDataBus), 
		.ALUAddressBus(ALUAddressBus), 
		.MemIO(MemIO), 
		.ValidMemoryData(ValidMemoryData), 
		.ExternalDrive(ExternalDrive), 
		.ExternalExchangeReady(ExternalExchangeReady)
   );
// Initialize Inputs
reg [31:0] EAB, EDB, IDB;
assign ExternalDataBus = EDB;
assign ExternalAddressBus = EAB;
       initial
	begin
	//Initialisation
	   clk = 0;
		rst = 0;
	   EAB = 0;
		EDB = 0;
		ExternalExchangeReady = 0;
		#100
      rst = 1;
		clk = 1;
		#5;
		rst = 0;
		clk = 0;
		#5
		clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
	//Drive
		EDB = 1281;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		ExternalExchangeReady = 1;
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
   end
endmodule
