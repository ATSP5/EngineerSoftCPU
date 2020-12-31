`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:46:52 12/31/2020
// Design Name:   ALU
// Module Name:   E:/Adam/GitHubLocallReopsitory/EngineerSoftCPU/APCPU/ALU_TB.v
// Project Name:  APCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_TB;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [7:0] ALU_Sel;
	reg ValidMemData;
	reg [23:0] DecoderData;
	reg [7:0] StatusRegisterVelues;
	reg [31:0] SPAddr;

	// Outputs
	wire [31:0] SetSP;
	wire [1:0] InDecSP;
	wire [1:0] MemIO;
	wire [31:0] ALUAddr;
	wire [2:0] MenagePC;
	wire [31:0] PCSet;
	wire [7:0] SetSR;
	wire [2:0] SetAP;

	// Bidirs
	wire [31:0] DataIO;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.A(A), 
		.B(B), 
		.ALU_Sel(ALU_Sel), 
		.ValidMemData(ValidMemData), 
		.DecoderData(DecoderData), 
		.StatusRegisterVelues(StatusRegisterVelues), 
		.SPAddr(SPAddr), 
		.DataIO(DataIO), 
		.SetSP(SetSP), 
		.InDecSP(InDecSP), 
		.MemIO(MemIO), 
		.ALUAddr(ALUAddr), 
		.MenagePC(MenagePC), 
		.PCSet(PCSet), 
		.SetSR(SetSR), 
		.SetAP(SetAP)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		ALU_Sel = 0;
		ValidMemData = 0;
		DecoderData = 0;
		StatusRegisterVelues = 0;
		SPAddr = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#5ALU_Sel = 8'd3;
		A = 32'd2147483681;
		B = 32'd2147483681;

	end
      
endmodule

