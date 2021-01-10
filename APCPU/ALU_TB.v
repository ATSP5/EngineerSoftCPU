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
   //reg [7:0] counter;
	reg [31:0] DataInput;
	
	//assign DataIO = DataInput;
	initial begin
		// Initialize Inputs
		clk = 0;
		A = 0;
		B = 0;
		ALU_Sel = 0;
		ValidMemData = 0;
		DecoderData = 0;
		StatusRegisterVelues = 0;
		SPAddr = 0;
     // DataInput = 32'd0;
		// Wait 100 ns for global reset to finish
		#100;
		/*
		   clk = 0;
		 // counter = 0;
		  //StatusRegisterVelues = 8'b01000010;
		  //SPAddr = 124802;
			#5 clk = ~clk;
		   ALU_Sel = 36;
		   //A = 879199;//1431655765;//4294967295;
			B = 879199;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			DataInput = 500;
			ValidMemData = 1;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			#5 clk = ~clk;
			*/
			
			clk = 0;
		  //StatusRegisterVelues = 8'b01000010;
		  //SPAddr = 124802;
		   forever
			begin
			 #5 clk = ~clk;
		      ALU_Sel = 37;
				DecoderData = 250;// ¯adnych liczb ujemnych!!!
		      //A = 199;//1431655765;//4294967295;
		     // B = 5;
			end
		// Add stimulus here
		
	end
      
endmodule

/*
        clk = 0;
		  counter = 0;
		  //StatusRegisterVelues = 8'b01000010;
		  //SPAddr = 124802;
		   forever
			begin
			 #5 clk = ~clk;
			 if(MenagePC == 1 && counter == 0 && clk == 0)
		     begin
		      ALU_Sel = 48;
				DecoderData = 250;// ¯adnych liczb ujemnych!!!
		      A = 199;//1431655765;//4294967295;
		      B = 5;
				counter=counter + 8'd1;
		     end
			end
		// Add stimulus here
		*/