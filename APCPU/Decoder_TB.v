`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:28:29 01/12/2021
// Design Name:   Decoder
// Module Name:   E:/Adam/GitHubLocallReopsitory/EngineerSoftCPU/APCPU/Decoder_TB.v
// Project Name:  APCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Decoder_TB;

	// Inputs
	reg clk;
	reg rst;
	reg [31:0] InstructionBus;
	reg [2:0] APSelBus;

	// Outputs
	wire [7:0] AluCode;
	wire [23:0] DecoderData;
	wire [2:0] RegSelX;
	wire [2:0] RegSelY;
	wire [2:0] RegSelZ;

	// Instantiate the Unit Under Test (UUT)
	Decoder uut (
		.clk(clk),
      .rst(rst),		
		.InstructionBus(InstructionBus), 
		.APSelBus(APSelBus), 
		.AluCode(AluCode), 
		.DecoderData(DecoderData), 
		.RegSelX(RegSelX), 
		.RegSelY(RegSelY), 
		.RegSelZ(RegSelZ)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = clk;
		InstructionBus = 0;
		APSelBus = 0;

		// Wait 100 ns for global reset to finish
		#100;
		#5 clk = ~clk;
		#5 rst = 1;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 rst = 0;
		   #5 clk = ~clk;
			InstructionBus = 32'd8706;//ADDIMC 34
			APSelBus =3;
			#5 clk = ~clk;
			#5 clk = ~clk;
			InstructionBus = 32'd22276;// ADDC 7, 2, 1
			#5 clk = ~clk;
			#5 clk = ~clk;
			InstructionBus = 32'd12814;// SHLC 2, 6
			#5 clk = ~clk;
			#5 clk = ~clk;
			InstructionBus = 32'd8979; // OR 3, 4
			#5 clk = ~clk;
			#5 clk = ~clk;
			InstructionBus = 32'd537; // JPR 2
			#5 clk = ~clk;
			#5 clk = ~clk;
			InstructionBus = 32'd547; // POP 2
			#5 clk = ~clk;
			#5 clk = ~clk;
			InstructionBus = 32'd10788; // LD 2 5
			forever
		  begin
			#5 clk = ~clk;
			#5 clk = ~clk;
        end
		// Add stimulus here
	end
      
endmodule

