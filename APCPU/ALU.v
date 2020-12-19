`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:06:09 12/19/2020 
// Design Name: 
// Module Name:    ALU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ALU(input [31:0] A,B,  // ALU 32-bit Inputs                 
           input [7:0] ALU_Sel,// ALU Selection
           output [31:0] ALU_Out, // ALU 32-bit Output
           output CarryOut // Carry Out Flag
    );

 reg [31:0] ALU_Result;
    assign ALU_Out = ALU_Result; // ALU out
     always @(*)
      begin
		 case(ALU_Sel)
		 8'd0: //NOP
		 
		 endcase
	   end
endmodule
