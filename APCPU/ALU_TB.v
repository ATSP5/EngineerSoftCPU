`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:00:21 01/02/2021
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
	reg clk;
	reg rst;
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
		.clk(clk), 
		.rst(rst),
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
	reg [31:0] DataInput;
	
	//assign DataIO = DataInput;
	initial begin
		// Initialize Inputs
		rst = 0;
		clk = 0;
		A = 0;
		B = 0;
		ALU_Sel = 0;
		ValidMemData = 0;
		DecoderData = 0;
		StatusRegisterVelues = 0;
		SPAddr = 0;
      DataInput = 32'd0;
		// Wait 100 ns for global reset to finish
		#100;
		 rst = 1;
		 #5 clk = ~clk;
		 #5 clk = ~clk;
		 rst = 0;
		    StatusRegisterVelues = 8'b00000000;
			 #5 clk = ~clk;
		    #5 clk = ~clk;
		    //SPAddr = 124802;			
		      ALU_Sel = 49;
				DecoderData = 5;// ¯adnych liczb ujemnych!!!
		      A = -337;//1431655765;//4294967295;
		      B = 28;
				/*
				SPAddr = 555;
				
				#5 clk = ~clk;
				#5 clk = ~clk;
				#5 clk = ~clk;
				#5 clk = ~clk;
				//DataInput = 333;
				#5 clk = ~clk;
				#5 clk = ~clk;
				ValidMemData = 1;
				#5 clk = ~clk;
				#5 clk = ~clk;
				ValidMemData = 0;
				*/
				forever
			begin
			#5 clk = ~clk;
			end
		// Add stimulus here
	end
      
endmodule

/*
				#5 clk = ~clk;
		      #5 clk = ~clk;
				#5 clk = ~clk;
		      #5 clk = ~clk;
				#5 clk = ~clk;
		      #5 clk = ~clk;
				ALU_Sel = 33;
				StatusRegisterVelues = 8'b00000000;
				DecoderData = 335;// ¯adnych liczb ujemnych!!!
		      A = 395;//1431655765;//4294967295;
		      B = 10;
				#5 clk = ~clk;
		      #5 clk = ~clk;
				#5 clk = ~clk;
		      #5 clk = ~clk;
				#5 clk = ~clk;
		      #5 clk = ~clk;
				ALU_Sel = 33;
				StatusRegisterVelues = 8'b00000000;
				DecoderData = 335;// ¯adnych liczb ujemnych!!!
		      A = 8;//1431655765;//4294967295;
		      B = 8;
*/