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
			  input RegRdy,       //General Register Ready signal
			  input ValidMemData, //Valid data from memory signal
			  input [23:0] DecoderData, //Data from decoder
			  input [7:0] StatusRegisterVelues, //Value of status register
			  inout [31:0] DataOut,//Data from/to memory / General Register
			  output [31:0] SetSP,//Set Stack Pointer
			  output [1:0] InDecSP,//Increment/Decrement SP
			  output [1:0] MemIO,//Menage data bus, 00-NOP, 01- Read from Mem, 10- Write to Mem
           output [31:0] ALUAddr, //Send Addres to Memory controler
           output [2:0] MenagePC, //Menage Program Counter 000 - NOP, 001 - inc, 010 - dec, 011 - set 100 - add to current
           output [31:0] PCSet,//Set addres to PC 	
           output [7:0] SetSR,//Set Status Register
           output [2:0] SetAP//Set Acumulator Pointer 			  
    );

    reg [31:0] ArgA, ArgB, ALU_Result, SPReg, ALUAddrReg,PCREG; //A, B, DataOut ,SetSP, ALUAddr, PCSet
	 reg [7:0] ALUCode, StatusReg, SRSet; //ALU_Sel, StatusRegisterVelues, SetSR
	 reg [23:0] DecoderDataReg;// DecoderData
	 reg [2:0] APReg, MenagePCReg;// SetAP, MenagePC
	 reg [1:0] InDecSPReg, MemIOReg; // InDecSP, MemIO
	 wire RegRdyCon, ValidMemDataCon;//RegRdy, ValidMemData
    assign ALU_Out = ALU_Result; // ALU out
     always @(*)
      begin
		 //case(ALU_Sel)
		 //8'd0: //NOP
		 
		 //endcase
	   end
endmodule
