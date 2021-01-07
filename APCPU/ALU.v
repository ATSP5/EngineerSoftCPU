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
module ALU( input wire clk, // Clock signal
            input wire [31:0] A, // ALU 32-bit Input 
            input wire [31:0] B,  // ALU 32-bit Input                 
            input wire [7:0] ALU_Sel,// ALU Selection
			   input wire ValidMemData, //Valid data from memory signal
			   input wire [23:0] DecoderData, //Data from decoder
			   input wire [7:0] StatusRegisterVelues, //Value of status register | C -Carry | N - Negative | x | x | x | x | CPI1 - Compare Index 1 | CPI0 - Compare Index 0 | (x'es to be used in another version of CPU)
				input wire [31:0] SPAddr, // Adres w rejestrze SP
				
			   inout wire [31:0] DataIO,//Data from/to memory / General Register
				
			   output reg [31:0] SetSP,//Set Stack Pointer
			   output reg [1:0] InDecSP,//Increment/Decrement SP 00 - Do nothing 01 - Increment 10 - Decrement 11 - Set SP 
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
			  reg ValidMemoryData;
			  reg [23:0] DataFromDecoder;
			  reg [31:0] StackPointerAddr;
			  //Rejestr IO:
			  reg [31:0] DataBus;
			  reg [2:0] PCReset;
			  //Rejestry wewnêtrzne:
			  //reg [7:0] EndWaitCode;// Rejestr zawieraj¹cy kod powrotu z instrukcji oczekiwania
			  //Przypisz linii IO danych, rejestr danych:
        assign DataIO = DataBus;
		  //Dla ka¿dego cyklu:
     always @(clk)
      begin
		 //Ustaw wszystkie wyjœcia jako logiczne 0 przy ka¿dym cyklu zegara!!!
		 if(clk == 1'd0)
		 begin
		 SetSP <= 32'd0;
		 InDecSP <= 2'd0;
		 MemIO <= 2'd0;
       ALUAddr <= 32'd0;
       MenagePC <= 3'd0;
       PCSet <= 32'd0;
       SetSR <= 8'd0; // Hmm czy aby na pewno??? Trza to ustaliæ.
       SetAP <= 3'd0;
		 DataBus <= 32'd0;
		 end
		 //Pobierz dane z wejœæ.
		 ArgA <= A;
	    ArgB <= B;
	    ALUSelect <= ALU_Sel;
	    StatusRegVal <= StatusRegisterVelues;
	    ValidMemoryData <= ValidMemData;
	    DataFromDecoder <= DecoderData;
		 StackPointerAddr <= SPAddr;
		 //Rozpocznij przetwarzanie.
		 if(clk == 1'd1)
		 begin
		  case(ALUSelect)
		   8'd255: //NOP
		    begin
			   MenagePC <= 3'd1;
		    end
			8'd254: //ENDWAIT (Internal Instruction)
		    begin
			  MenagePC <= 3'd1;
		    end
		   8'd0: //WAIT (Internal Instruction)
		    begin
		    end
		   8'd1: //ADDIM
		    begin
		     {SetSR[7],DataBus} <= {1'd0,ArgA} + {9'd0,DataFromDecoder};
			  MemIO <= 2'd3; // Data to general purpose registers
			  if(ArgA[31] == 1'd1) // Data From Decoder tylko na 24'rech bitach w zwi¹zku z czym nie mo¿e byæ ujemna!
			   begin
				 SetSR[6] <= ((ArgA + {8'b0,DataFromDecoder})>>31);
			   end
				else
				begin
				 SetSR[6] <= 1'b0;
				end 
			  MenagePC <= 3'd1;
		    end
			8'd2: // ADDIMC
			 begin
			  {SetSR[7],DataBus} <= {1'd0,ArgA} + {9'd0,DataFromDecoder} + StatusRegVal[7];
			  MemIO <= 2'd3; // Data to general purpose registers
			  if(ArgA[31] == 1'd1)
			   begin
				 SetSR[6] <= ((ArgA + {9'b0,DataFromDecoder} + StatusRegVal[7])>>31);
			   end
				else
				begin
				 SetSR[6] <= 1'b0;
				end 
			  MenagePC <= 3'd1;
			 end
			8'd3: // ADD
		    begin
			  {SetSR[7],DataBus} <= {1'b0,ArgA} + {1'b0,ArgB};
			  MemIO <= 2'd3; // Data to general purpose registers
			  if((ArgA[31] == 1'd1) || (ArgB[31] == 1'd1))
			   begin
				 SetSR[6] <= ((ArgA + ArgB)>>31);
			   end
				else
				begin
				 SetSR[6] <= 1'b0;
				end 
			  MenagePC <= 3'd1;
			 end
			8'd4: // ADDC
		    begin
			  {SetSR[7],DataBus} <= {1'b0,ArgA} + {1'b0,ArgB} + StatusRegVal[7];
			  MemIO <= 2'd3; // Data to general purpose registers
			  if((ArgA[31] == 1'd1) || (ArgB[31] == 1'd1))
			   begin
				 SetSR[6] <= ((ArgA + ArgB + StatusRegVal[7])>>31);
			   end
				else
				begin
				 SetSR[6] <= 1'b0;
				end 
			  MenagePC <= 3'd1;
			 end
			8'd5: // SUBIM
		    begin
		     {SetSR[7],DataBus} <= {1'b0,ArgA} - {9'b0,DataFromDecoder};
			  MemIO <= 2'd3; // Data to general purpose registers
			  if((ArgA < {8'd0,DataFromDecoder}) || (ArgA[31] == 1'd1))
			   begin
				 SetSR[6] <= 1'b1;
			   end
				else
				begin
				 SetSR[6] <= 1'b0;
				end 
			  MenagePC <= 3'd1;
          end
			 8'd6: // SUBIMC
		    begin
		     {SetSR[7],DataBus} <= {1'b0,ArgA} - ({9'b0,DataFromDecoder} - StatusRegVal[7]);
			  MemIO <= 2'd3; // Data to general purpose registers
			  if(ArgA < ({8'd0,DataFromDecoder} - 32'd1) || (ArgA[31] == 1'd1))
			   begin
				 SetSR[6] <= ((ArgA - (DataFromDecoder - StatusRegVal[7]))>>31); 
			   end
				else
				begin
				 SetSR[6] <= 1'b0;
				end 
			  MenagePC <= 3'd1;
          end
			 8'd7: // SUB
		    begin
		     {SetSR[7],DataBus} <= {1'b0,ArgA} - {1'b0,ArgB};
			  if((ArgA < ArgB) ||(ArgA[31] == 1'd1))
			   begin
				 SetSR[6] <= ((ArgA - ArgB)>>31);
			   end
				else
				begin
				 SetSR[6] <= 1'b0;
				end 
			  MemIO <= 2'd3; // Data to general purpose registers
			  MenagePC <= 3'd1;
          end
			 8'd8: // SUBC
		    begin
		     {SetSR[7],DataBus} <= {1'b0,ArgA} - ({1'b0,ArgB} - StatusRegVal[7]);
			  MemIO <= 2'd3; // Data to general purpose registers
			  if((ArgA < ArgB) || (ArgA[31] == 1'd1))
			   begin
				 SetSR[6] <= ((ArgA - (ArgB - StatusRegVal[7]))>>31); 
			   end
				else
				begin
				 SetSR[6] <= 1'b0;
				end 
			  MenagePC <= 3'd1;
          end
			 8'd9: // MULIM
		    begin
		     {SetSR[7],DataBus} <= {1'b0,ArgA} * {9'b0,DataFromDecoder};
			  MemIO <= 2'd3; // Data to general purpose registers
			  if(ArgA[31] == 1'd1)
			   begin
				 SetSR[6] <= 1'b1;
			   end
				else
				begin
				 SetSR[6] <= 1'b0;
				end 
			  MenagePC <= 3'd1;
          end
			 8'd10: // MUL
		    begin
		     {SetSR[7],DataBus} <= {1'b0,ArgA} * {1'b0,ArgB};
			  MemIO <= 2'd3; // Data to general purpose registers
			  if(ArgA[31] == 1'd1 || ArgB[31] == 1'd1)
			   begin
				 SetSR[6] <= ((ArgA * ArgB )>>31); 
			   end
				else
				begin
				 SetSR[6] <= 1'b0;
				end 
			  MenagePC <= 3'd1;
          end
			 8'd11: // DIVIM
		    begin
		     DataBus <= ArgA / DataFromDecoder;
			  MemIO <= 2'd3; // Data to general purpose registers
			  MenagePC <= 3'd1;
          end
			 8'd12: // DIV
		    begin
		     DataBus <= ArgA / ArgB;
			  MemIO <= 2'd3; // Data to general purpose registers
			  MenagePC <= 3'd1;
          end
			 8'd13: // SHL
		    begin
			  DataBus <= ArgA << DataFromDecoder;
			  MemIO <= 2'd3; // Data to general purpose registers
			  MenagePC <= 3'd1;
          end
			 8'd14: // SHLC
		    begin
		     {SetSR[7],DataBus} <= {1'b0,ArgA,StatusRegVal[7]} << DataFromDecoder;
			  MemIO <= 2'd3; // Data to general purpose registers
			  MenagePC <= 3'd1;
          end
			 8'd15: // SHR
		    begin
			  DataBus <= ArgA >> DataFromDecoder;
			  MemIO <= 2'd3; // Data to general purpose registers
			  MenagePC <= 3'd1;
          end
			 8'd16: // SHRC
		    begin
		     {SetSR[7],DataBus} <= {1'b0,ArgA,StatusRegVal[7]} >> DataFromDecoder;
			  MemIO <= 2'd3; // Data to general purpose registers
			  MenagePC <= 3'd1;
          end
			 8'd17: // AND
		    begin
		     DataBus <= ArgA & ArgB;
			  MemIO <= 2'd3; // Data to general purpose registers
			  MenagePC <= 3'd1;
          end
			 8'd18: // NAND
		    begin
		     DataBus <= ~(ArgA & ArgB);
			  MemIO <= 2'd3; // Data to general purpose registers
			  MenagePC <= 3'd1;
          end
			 8'd19: // OR
		    begin
		     DataBus <= ArgA | ArgB;
			  MemIO <= 2'd3; // Data to general purpose registers
			  MenagePC <= 3'd1;
          end
			 8'd20: // NOR
		    begin
		     DataBus <= ~(ArgA | ArgB);
			  MemIO <= 2'd3; // Data to general purpose registers
			  MenagePC <= 3'd1;
          end
			 8'd21: // XOR
		    begin
		     DataBus <= ArgA ^ ArgB;
			  MemIO <= 2'd3; // Data to general purpose registers
			  MenagePC <= 3'd1;
          end
			 8'd22: // XNOR
		    begin
		     DataBus <= ~(ArgA ^ ArgB);
			  MemIO <= 2'd3; // Data to general purpose registers
			  MenagePC <= 3'd1;
          end
			 8'd23: // RJP
		    begin
		     PCSet <= (DataFromDecoder + 23'd1);
			  MenagePC <= 3'b100;
          end
			 8'd24: // JP
		    begin
		     PCSet <= DataFromDecoder;
			  MenagePC <= 3'b011;
          end
			 8'd25: // JPR 
		    begin
		     //*********************TO Check!*********************************************************************************************************//
			  MemIO <= 2'd1; // Read Memory Request
			  ALUAddr <= ArgA;
			  if(ValidMemoryData == 1'b1)
			   begin
				 PCSet <= DataBus;
				 MenagePC <= 3'd1;// Go to next instruction
				end
          end
			 8'd26: // JEQ
		    begin
		     if(StatusRegVal[1] == 1'b1 && StatusRegVal[0] == 1'b1)
			    begin 
				  PCSet <= DataFromDecoder;
				  MenagePC <= 3'b011;
				 end 
				    else
				 begin
				   MenagePC <= 3'd1;
				 end
          end
			 8'd27: // JG
		    begin
		     if(StatusRegVal[1] == 1'b1 && StatusRegVal[0] == 1'b0)
			    begin 
				  PCSet <= DataFromDecoder;
				  MenagePC <= 3'b011;
				 end 
				    else
				 begin
				   MenagePC <= 3'd1;
				 end
          end
			 8'd28: // JL
		    begin
		     if(StatusRegVal[1] == 1'b0 && StatusRegVal[0] == 1'b1)
			    begin 
				  PCSet <= DataFromDecoder;
				  MenagePC <= 3'b011;
				 end 
				    else
				 begin
				   MenagePC <= 3'd1;
				 end
          end
			 8'd29: // JGEQ
		    begin
		     if(StatusRegVal[1] == 1'b1 && (StatusRegVal[0] == 1'b1 || StatusRegVal[0] == 1'b0))
			    begin 
				  PCSet <= DataFromDecoder;
				  MenagePC <= 3'b011;
				 end 
				    else
				 begin
				   MenagePC <= 3'd1;
				 end
          end
			 8'd30: // JLEQ
		    begin
		     if((StatusRegVal[1] == 1'b1 || StatusRegVal[1] == 1'b0)&& StatusRegVal[0] == 1'b1)
			    begin 
				  PCSet <= DataFromDecoder;
				  MenagePC <= 3'b011;
				 end 
				    else
				 begin
				   MenagePC <= 3'd1;
				 end
          end
			 8'd31: // CP
		    begin
			 if(StatusRegVal[6]== 1'b1)
			 begin
           	if($signed(ArgA) == $signed(ArgB))
			   begin
				 SetSR[1] <=1'b1;
				 SetSR[0] <=1'b1;
				end
				else if($signed(ArgA) > $signed(ArgB))
				begin 
				 SetSR[1] <=1'b1;
				 SetSR[0] <=1'b0;
				end 
				else
				begin 
				 SetSR[1] <=1'b0;
				 SetSR[0] <=1'b1;
				end	 
			 end 
			 else
			 begin
		     if(ArgA == ArgB)
			   begin
				 SetSR[1] <=1'b1;
				 SetSR[0] <=1'b1;
				end
				else if(ArgA > ArgB)
				begin 
				 SetSR[1] <=1'b1;
				 SetSR[0] <=1'b0;
				end 
				else
				begin 
				 SetSR[1] <=1'b0;
				 SetSR[0] <=1'b1;
				end
			  end
			  MenagePC <= 3'd1;
          end
			 8'd32: // CPC
			 begin
			  if(StatusRegVal[6]== 1'b1)
			   begin
				  if($signed({ArgA,StatusRegVal[7]}) == $signed({ArgB,1'b0}))
			   begin
				 SetSR[1] <=1'b1;
				 SetSR[0] <=1'b1;
				end
				else if($signed({ArgA,StatusRegVal[7]}) > $signed({ArgB,1'b0}))
				begin 
				 SetSR[1] <=1'b1;
				 SetSR[0] <=1'b0;
				end 
				else
				begin 
				 SetSR[1] <=1'b0;
				 SetSR[0] <=1'b1;
				end
				end
			  else
			   begin
		     if({ArgA,StatusRegVal[1]} == {ArgB,1'b0})
			   begin
				 SetSR[1] <=1'b1;
				 SetSR[0] <=1'b1;
				end
				else if({ArgA,StatusRegVal[1]} > {ArgB,1'b0})
				begin 
				 SetSR[1] <=1'b1;
				 SetSR[0] <=1'b0;
				end 
				else
				begin 
				 SetSR[1] <=1'b0;
				 SetSR[0] <=1'b1;
				end
				end
				MenagePC <= 3'd1;
          end
			  8'd33: // CPI
		    begin
			  if(StatusRegVal[6]== 1'b1)
			   begin
				 if($signed(ArgA) == {8'd0,DataFromDecoder})
			   begin
				 SetSR[1] <=1'b1;
				 SetSR[0] <=1'b1;
				end
				else if($signed(ArgA) > {8'd0,DataFromDecoder})
				begin 
				 SetSR[1] <=1'b1;
				 SetSR[0] <=1'b0;
				end 
				else
				begin 
				 SetSR[1] <=1'b0;
				 SetSR[0] <=1'b1;
				end
				end
			  else
			   begin
		     if(ArgA == {8'd0,DataFromDecoder})
			   begin
				 SetSR[1] <=1'b1;
				 SetSR[0] <=1'b1;
				end
				else if(ArgA > {8'd0,DataFromDecoder})
				begin 
				 SetSR[1] <=1'b1;
				 SetSR[0] <=1'b0;
				end 
				else
				begin 
				 SetSR[1] <=1'b0;
				 SetSR[0] <=1'b1;
				end
				end
				MenagePC <= 3'd1;
          end
			 8'd34: // PUSH
			 begin
            DataBus <= ArgA;
				ALUAddr <= StackPointerAddr;
				MemIO <= 2'b10;
				InDecSP <= 2'b01;
				MenagePC <= 3'd1;
          end
			 8'd35: // POP
			 begin
            ALUAddr <= StackPointerAddr;
				MemIO <= 2'b01;
				//////////////////////////////******************************TO check**************************////////////////////////////////////
				 if(ValidMemoryData == 1'b1)
			   begin
				 MemIO <= 2'b11;// Save DataBus to Rx
				 MenagePC <= 3'd1;// Go to next instruction
				 InDecSP <= 2'b10; //SP --;
				end
          end
			 8'd36: // LD
			 begin
            ALUAddr <= ArgB;
				MemIO <= 2'b01;
				//////////////////////////////******************************TO Check**************************////////////////////////////////////
				 if(ValidMemoryData == 1'b1)
			   begin
				 MemIO <= 2'b11;// Save DataBus to Rx
				 MenagePC <= 3'd1;// Go to next instruction
				 InDecSP <= 2'b10; //SP --;
				 end
          end
			 8'd37: // LDI
			 begin
            DataBus <= ArgA;
				MemIO <= 2'b11;// Save DataBus to Rx
				MenagePC <= 3'd1;// Go to next instruction
          end
			 8'd38: // MOV
			 begin
            DataBus <= ArgB;
				MemIO <= 2'b11;
				MenagePC <= 3'd1;
          end
			 8'd39: // ST
			 begin
            ALUAddr <= ArgA;
            DataBus <= ArgB;
				MemIO <= 2'b10;
				MenagePC <= 3'd1;
          end
			 8'd40: // STI
			 begin
			   ALUAddr <= ArgA;
            DataBus <= DataFromDecoder;
				MemIO <= 2'b10;
				MenagePC <= 3'd1;
          end
			 8'd41: // SAP
			 begin
            SetAP <= DataFromDecoder;
				MenagePC <= 3'd1;
          end
			 8'd42: // SSP
			 begin
            SetSP <= ArgA;
				InDecSP <= 2'd3;
				MenagePC <= 3'd1;
          end
			 8'd43: // SPMUIP 
			 begin
            //RESERVED NOT TO DO!!!
          end
			 8'd44: // SOR
			 begin
            SetSR <= StatusRegVal | ArgA;
				MenagePC <= 3'd1;
          end
			 8'd45: // SAND
			 begin
            SetSR <= StatusRegVal & ArgA;
				MenagePC <= 3'd1;
          end
			 8'd46: // SLD
			 begin
            DataBus <= {24'd0,StatusRegVal};
				MemIO <= 2'd3; // Data to general purpose registers
			   MenagePC <= 3'd1;
          end
			 8'd47: // LIR
			 begin
            //RESERVED NOT TO DO!!!
          end
			 8'd48: // MOD
			 begin
			  if(StatusRegVal[6] == 1'b1)
			   begin
				 DataBus <= $signed(ArgA) % $signed(ArgB);
				 SetSR[6] <= 1'b1;
				end
				else
				begin 
				 DataBus <= ArgA % ArgB;
				 SetSR[6] <= 1'b0;
				end
				MemIO <= 2'd3; // Data to general purpose registers
			   MenagePC <= 3'd1;
          end
			 8'd49: //ABS
			 begin
			  MemIO <= 2'd3; // Data to general purpose registers
			  MenagePC <= 3'd1;
			  if(ArgA[31] == 1'b1)
			   begin
				 DataBus <= (ArgA * -32'd1);
				 SetSR[6] <= 1'b1;
				end
			  else
			   begin
				 DataBus <= ArgA[31];
				 SetSR[6] <= 1'b0;
				end
			 end
			 
		   endcase
			end
			//////////////////////////////////
	   end
endmodule
