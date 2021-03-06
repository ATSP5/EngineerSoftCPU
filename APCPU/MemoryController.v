`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:56:22 01/12/2021 
// Design Name: 
// Module Name:    MemoryController 
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
module MemoryController(input wire clk,
    input wire rst,
    inout wire[31:0] ExternalDataBus, //External IO
    inout wire[31:0] ExternalAddressBus, //External IO
    output reg[31:0] InstructionBus, //Magistrala Instrukcji
    input wire[31:0] PCAddressBus, // Magistrala sterowania adresem przez PC
    input wire PCGetNewInstruction, //Sygna³ rozkazu pobrania nastêpnej instrukcji
    inout wire[31:0] InternalDataBus, //Internal IO
    input wire[31:0] ALUAddressBus, //Magistrala adresowa ALU
    input wire[1:0] MemoryIOBus, // 00-NOP, 01- Read from Mem, 10- Write to Mem 11 - Data to General Registers
    output reg ValidMemoryData,// Potwierdzenie danych z pamiêci 
	 output reg[2:0] ExternalDrive, //000 - Do nothing 001 - Get Instruction 010 - Memory read 011 - Memory Write 100 - IO Read (Reserved) 101 - IO Write (Reserved) 110, 111 - Reserved + state pointer
	 input wire ExternalExchangeReady, // Ready signal for external data exchange
    output reg ExchangeACK//	 Ready signal for external data exchange sent into decoder
    );

	 reg EDB_EN, EAB_EN, IDB_EN;// External/Internal Data/Adress Bus Enable
	 reg [31:0] EDBDrive, EABDrive, IDBDrive;// Do zapisu External/Internal Data/Adress Bus 
	 
	 assign ExternalDataBus = EDB_EN ? EDBDrive : 32'dz;
	 assign ExternalAddressBus = EAB_EN ? EABDrive : 32'dz;
	 assign InternalDataBus = IDB_EN ? IDBDrive : 32'dz;
	
	   always@(posedge clk)
		 begin
		 if(rst == 1'b0)
		 begin
		 ExchangeACK <= ExternalExchangeReady;
		 // Pobranie kolejnej instrukcji
		  if( ExternalDrive == 3'b001)
		   begin
			  EAB_EN <= 1'b1;
			  EABDrive <= PCAddressBus;
			  EDB_EN <= 1'b0;
			  IDB_EN <= 1'b0;
			  if(ExternalExchangeReady == 1'b1)// Dzia³ania po oczekiwaniu na zwrot z pamiêci instrukcji
			   begin
			    ExternalDrive <= 3'b000;
				 InstructionBus <= ExternalDataBus;
			   end
			end
			//
			if(PCGetNewInstruction == 1'd1) // Rozkaz pobrania kolejnej instrukcji
			 begin
			   ExternalDrive <= 3'b001;
				ValidMemoryData <= 1'b0; // Wyzeruj ten sygna³ przy ka¿dyej nowej instrukcji !!!
			 end
			if(MemoryIOBus == 2'b01) // Odczyt danych z pamiêci
			 begin
			  EAB_EN <= 1'b1;
			  IDB_EN <= 1'b1;
			  EDB_EN <= 1'b0;
			  EABDrive <= ALUAddressBus;
			  ExternalDrive <= 3'b010;
			 end
			 if(MemoryIOBus == 2'b10) // Zapis danych do pamiêci
			 begin
			  EAB_EN <= 1'b1;
			  IDB_EN <= 1'b0;
			  EDB_EN <= 1'b1;
			  EABDrive <= ALUAddressBus;
			  EDBDrive <= InternalDataBus;
			  ExternalDrive <= 3'b011;
			 end
			 if(ExternalExchangeReady == 1'b1 && ExternalDrive == 3'b010) // Dzia³ania po oczekiwaniu na zwrot z pamiêci danych
			   begin
				IDBDrive <= ExternalDataBus;
				if(ExternalDataBus == InternalDataBus)
				begin
				 ValidMemoryData <= 1'b1;
				end
				end
		 end
		 else
		 begin
		  ValidMemoryData <= 1'b0;
		  ExternalDrive <= 1'b0;
		  InstructionBus <= 32'd0;
		  EDBDrive <= 32'd0;
		  EABDrive <= 32'd0;
		  IDBDrive <= 32'd0;
		  EDB_EN <= 1'b1;
		  EAB_EN <= 1'b1;
		  IDB_EN <= 1'b1;
		  ExchangeACK <= 0;
		 end
		 end
	 
endmodule
