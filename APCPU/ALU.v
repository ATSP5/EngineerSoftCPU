`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Adam Pruka³a
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
module ALU(input wire [31:0] A, // ALU 32-bit Input 
            input wire [31:0] B,  // ALU 32-bit Input                 
            input wire [7:0] ALU_Sel,// ALU Selection
			   input wire RegRdy,       //General Register Ready signal
			   input wire ValidMemData, //Valid data from memory signal
			   input wire [23:0] DecoderData, //Data from decoder
			   input wire [7:0] StatusRegisterVelues, //Value of status register
				
			   inout wire [31:0] DataIO,//Data from/to memory / General Register
				
			   output reg [31:0] SetSP,//Set Stack Pointer
			   output reg [1:0] InDecSP,//Increment/Decrement SP
			   output reg [1:0] MemIO,//Menage data bus, 00-NOP, 01- Read from Mem, 10- Write to Mem 11 - Data to General Registers
            output reg [31:0] ALUAddr, //Send Addres to Memory controler
            output reg [2:0] MenagePC, //Menage Program Counter 000 - Do nothing, 001 - inc, 010 - dec, 011 - set 100 - add to current
            output reg [31:0] PCSet,//Set addres to PC 	
            output reg [7:0] SetSR,//Set Status Register
            output reg [2:0] SetAP//Set Acumulator Pointer 			  
    );
           
			  reg [31:0] ArgA;
    		  reg [31:0] ArgB;
			  reg [7:0] ALUSelect; 
			  reg [7:0] StatusRegVal;
			  reg RegReady;
			  reg ValidMemoryData;
			  reg [23:0] DataFromDecoder;
			  
			  reg [31:0] DataBus;
			  //Przypisz linii IO danych, rejestr danych:
        assign DataIO = DataBus;
		  //Dla ka¿dego cyklu:
     always @(*) // TO DO Dodaæ sygna³ zegarowy !!!
      begin
		 //Ustaw wszystkie wyjœcia jako logiczne 0 przy ka¿dym cyklu zegara!!!
		 SetSP = 32'd0;
		 InDecSP = 2'd0;
		 MemIO = 2'd0;
       ALUAddr = 32'd0;
       MenagePC = 3'd0;
       PCSet = 32'd0;
       SetSR = 8'd0;
       SetAP = 3'd0;
		 DataBus = 32'd0;
		 //Pobierz dane z wejœæ.
		 ArgA <= A;
	    ArgB <= B;
	    ALUSelect <= ALU_Sel;
	    StatusRegVal <= StatusRegisterVelues;
	    RegReady <= RegRdy;
	    ValidMemoryData <= ValidMemData;
	    DataFromDecoder <= DecoderData;
		 //Rozpocznij przetwarzanie.
		  case(ALUSelect)
		   8'd0: //NOP
		    begin
			  MenagePC = 3'd1;
		    end
		   8'd1: //ADDIM
		    begin
		     ArgA <= ArgA + DataFromDecoder;
		    end
		   endcase
	   end
endmodule
