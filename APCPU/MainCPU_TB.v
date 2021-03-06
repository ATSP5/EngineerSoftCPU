// Verilog test fixture created from schematic E:\Adam\GitHubLocallReopsitory\EngineerSoftCPU\APCPU\MainCPU.sch - Sun Jan 17 21:13:48 2021

`timescale 1ns / 1ps

module MainCPU_MainCPU_sch_tb();
   
	//inputs
   reg clk;
	reg rst;
	reg ExternalExchangeReady;
	// Outputs
	wire [31:0] PCAddressBus;
	wire GetInstruction;
	wire [31:0] ALUAddressBus;
	wire [1:0] MemIO;
	wire [31:0] InstructionBus;
	wire ValidMemoryData;
	wire [2:0] ExternalDrive;
	wire [31:0] A;
	wire [31:0] B;
	wire [7:0] ALUSel;
	wire [23:0] DecoderData;
	wire [2:0] SelX;
	wire [2:0] SelY;
	wire [2:0] SelZ;
	wire [2:0] APSel;
	wire [2:0] PCDrive;
	wire [7:0] SRSet;
	wire [3:0] APSet;
	wire ALUrst;
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
		.GetInstruction(GetInstruction), 
		.InternalDataBus(InternalDataBus), 
		.ALUAddressBus(ALUAddressBus), 
		.MemIO(MemIO), 
		.ValidMemoryData(ValidMemoryData), 
		.ExternalDrive(ExternalDrive), 
		.ExternalExchangeReady(ExternalExchangeReady),
		.A(A),
		.B(B),
		.ALUSel(ALUSel),
		.DecoderData(DecoderData),
		.SelX(SelX),
		.SelY(SelY),
		.SelZ(SelZ),
		.APSel(APSel),
		.PCDrive(PCDrive),
		.SRSet(SRSet),
		.APSet(APSet),
		.ALUrst(ALUrst)
   );
// Initialize Inputs
reg rw;
reg [31:0] EAB, EDB, IDB;
assign ExternalDataBus = rw? EDB : 32'dz;
assign ExternalAddressBus = EAB;
       initial
	begin
	//Initialisation and restart
	   clk = 0;
		rst = 0;
	   EAB = 0;
		EDB = 0;
		rw = 1;
		ExternalExchangeReady = 0;
		#100
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
      rst = 1;
		#5
		clk = 1;
		#5;
		clk = 0;
		#5
		clk = ~clk;
		#5
		rst = 0;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
	//Drive
	//*************************
	 //Pierwsza instrukcja
		EDB = 3365; //LDI 13: 110100100101
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		ExternalExchangeReady = 1;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		ExternalExchangeReady = 0;
		while(GetInstruction == 0)
		begin
		#5 clk = ~clk;
		#5 clk = ~clk;
		end
		//Druga instrukcja
		ExternalExchangeReady = 1;
		EDB = 297; //SAP 1: 100101001
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		ExternalExchangeReady = 0;
		while(GetInstruction == 0)
		begin
		#5 clk = ~clk;
		#5 clk = ~clk;
		end
		//Trzecia instrukcja
		ExternalExchangeReady = 1;
		EDB = 2597; //LDI 10: 101000100101
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		ExternalExchangeReady = 0;
		while(GetInstruction == 0)
		begin
		#5 clk = ~clk;
		#5 clk = ~clk;
		end
		//Czwarta instrukcja
		ExternalExchangeReady = 1;
		EDB = 34819; //Add 0, 1, 2: 100001000000000011
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		ExternalExchangeReady = 0;
		while(GetInstruction == 0)
		begin
		#5 clk = ~clk;
		#5 clk = ~clk;
		end
		//Pi¹ta instrukcja
		ExternalExchangeReady = 1;
		EDB = 5159; //ST 4, 2: 1010000100111
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		ExternalExchangeReady = 0;
		rw = 0;
		while(GetInstruction == 0)
		begin
		#5 clk = ~clk;
		#5 clk = ~clk;
		end
		//End of instructions
		forever 
		begin
		#5 clk = ~clk;
		#5 clk = ~clk;
		end
   end
endmodule
/*
//Pierwsza instrukcja
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
		ExternalExchangeReady = 0;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		//Druga instrukcja
		ExternalExchangeReady = 1;
		EDB = 114691;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		ExternalExchangeReady = 0;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		//Trzecia instrukcja
		ExternalExchangeReady = 1;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		ExternalExchangeReady = 0;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		forever 
		begin
		#5 clk = ~clk;
		#5 clk = ~clk;
		end
*/

/* **********************************
 //Pierwsza instrukcja
		EDB = 3365; //LDI 13: 110100100101
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
		ExternalExchangeReady = 0;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		//Druga instrukcja
		ExternalExchangeReady = 1;
		EDB = 297; //SAP 1: 100101001
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		ExternalExchangeReady = 0;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		//Trzecia instrukcja
		ExternalExchangeReady = 1;
		EDB = 2597; //LDI 10: 101000100101
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		ExternalExchangeReady = 0;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		//Czwarta instrukcja
		ExternalExchangeReady = 1;
		EDB = 34819; //Add 0, 1, 2: 100001000000000011
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		ExternalExchangeReady = 0;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		EDB = 5159; //ST 4, 2: 1010000100111
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		ExternalExchangeReady = 0;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;

*/