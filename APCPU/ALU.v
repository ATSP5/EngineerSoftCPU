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
module ALU( input wire clk, // Sygna³ zegarowy
            input wire rst, // Reset
            input wire [31:0] A, // ALU 32-bit WE 
            input wire [31:0] B,  // ALU 32-bit WE                 
            input wire [7:0] ALU_Sel,// Wybór instrukcji
			   input wire ValidMemData, //Sygna³ typu ACK z pamiêci
			   input wire [23:0] DecoderData, //Dane z dekodera
			   input wire [7:0] StatusRegisterVelues, //Wartoœci rejestru SR | C -Carry | N - Negative | x | x | x | x | CPI1 - Compare Index 1 | CPI0 - Compare Index 0 | (x'es to be used in another version of CPU)
				input wire [31:0] SPAddr, // Adres w rejestrze SP
				
			   inout wire [31:0] DataIO,//Dane z/do pamiêci / rejestrów ogólnego przeznaczenia
				
			   output reg [31:0] SetSP,//Ustaw SP
			   output reg [1:0] InDecSP,//Inkrementuj/Dekrementuj SP 00 - Nie rób nic 01 - Inkrementuj 10 - Dekrementuj 11 - Ustaw SP 
			   output reg [1:0] MemIO,//Za¿¹dzaj wewnêtrzn¹ magistral¹ danych, 00-Nie rób nic, 01- Odczyt z pamiêci, 10- Zapis do pamiêci 11 - Dane do rejestrów ogólnego przeznaczenia
            output reg [31:0] ALUAddr, //Adres do kontrolera pamiêci
            output reg [2:0] MenagePC, //Za¿¹dzaj PC 000 - Nie rób nic, 001 - inc, 010 - dec, 011 - ustaw 100 - dodaj do wartoœci bierz¹cej
            output reg [31:0] PCSet,//Ustaw adres do PC 	
            output reg [7:0] SetSR,//Ustaw SR
            output reg [3:0] SetAP//Ustaw AP 			  
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
			  //reg [31:0] ReadDataBus;
			  reg [2:0] PCReset;
			  reg oe; //Zezwolenie na wyjœciowy kierunek DataIO
			  
        assign DataIO = oe ? DataBus : 32'dz;
		  
     always @(posedge clk)
      begin
		 //Ustaw wszystkie wyjœcia jako logiczne 0 przy ka¿dym cyklu zegara!!!
		 if(rst == 1'd1)
		 begin
		  SetSP <= 32'd0;
		  InDecSP <= 2'd0;
		  MemIO <= 2'd0;
        ALUAddr <= 32'd0;
        MenagePC <= 3'd0;
        PCSet <= 32'd0;
        SetSR <= 8'd0; 
        SetAP <= 4'd0;
		  DataBus <= 32'd0;
		  oe <= 1'b0;
		 end
		 else
		  begin
		  //Pobierz dane z wejœæ.
		  ArgA <= A;
	     ArgB <= B;
	     ALUSelect <= ALU_Sel;
	     StatusRegVal <= StatusRegisterVelues;
	     ValidMemoryData <= ValidMemData;
	     DataFromDecoder <= DecoderData;
		  StackPointerAddr <= SPAddr;
		 //Rozpocznij przetwarzanie.
		  case(ALUSelect)
		   8'd255: //NOP
		    begin
			   MenagePC <= 3'd1;
				oe <= 1'b0;
		    end
			8'd254: //ENDWAIT (Internal Instruction)
		    begin
			  MenagePC <= 3'd1;
			  oe <= 1'b0;
		    end
		   8'd0: //WAIT (Internal Instruction)
		    begin
			 oe <= 1'b0;
		    end
		   8'd1: //ADDIM
		    begin
			  oe <= 1'b1;
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
			 oe <= 1'b1;
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
			 oe <= 1'b1;
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
			 oe <= 1'b1;
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
			 oe <= 1'b1;
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
			 oe <= 1'b1;
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
			 oe <= 1'b1;
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
			 oe <= 1'b1;
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
			 oe <= 1'b1;
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
			 oe <= 1'b1;
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
			 oe <= 1'b1;
		     DataBus <= ArgA / DataFromDecoder;
			  MemIO <= 2'd3; // Data to general purpose registers
			  MenagePC <= 3'd1;
          end
			 8'd12: // DIV
		    begin
			 oe <= 1'b1;
		     DataBus <= ArgA / ArgB;
			  MemIO <= 2'd3; // Data to general purpose registers
			  MenagePC <= 3'd1;
          end
			 8'd13: // SHL
		    begin
			 oe <= 1'b1;
			  DataBus <= ArgA << DataFromDecoder;
			  MemIO <= 2'd3; // Data to general purpose registers
			  MenagePC <= 3'd1;
          end
			 8'd14: // SHLC
		    begin
			 oe <= 1'b1;
		     {SetSR[7],DataBus} <= {1'b0,ArgA,StatusRegVal[7]} << DataFromDecoder;
			  MemIO <= 2'd3; // Data to general purpose registers
			  MenagePC <= 3'd1;
          end
			 8'd15: // SHR
		    begin
			 oe <= 1'b1;
			  DataBus <= ArgA >> DataFromDecoder;
			  MemIO <= 2'd3; // Data to general purpose registers
			  MenagePC <= 3'd1;
          end
			 8'd16: // SHRC
		    begin
			 oe <= 1'b1;
		     {SetSR[7],DataBus} <= {1'b0,ArgA,StatusRegVal[7]} >> DataFromDecoder;
			  MemIO <= 2'd3; // Data to general purpose registers
			  MenagePC <= 3'd1;
          end
			 8'd17: // AND
		    begin
			 oe <= 1'b1;
		     DataBus <= ArgA & ArgB;
			  MemIO <= 2'd3; // Data to general purpose registers
			  MenagePC <= 3'd1;
          end
			 8'd18: // NAND
		    begin
			 oe <= 1'b1;
		     DataBus <= ~(ArgA & ArgB);
			  MemIO <= 2'd3; // Data to general purpose registers
			  MenagePC <= 3'd1;
          end
			 8'd19: // OR
		    begin
			 oe <= 1'b1;
		     DataBus <= ArgA | ArgB;
			  MemIO <= 2'd3; // Data to general purpose registers
			  MenagePC <= 3'd1;
          end
			 8'd20: // NOR
		    begin
			 oe <= 1'b1;
		     DataBus <= ~(ArgA | ArgB);
			  MemIO <= 2'd3; // Data to general purpose registers
			  MenagePC <= 3'd1;
          end
			 8'd21: // XOR
		    begin
			 oe <= 1'b1;
		     DataBus <= ArgA ^ ArgB;
			  MemIO <= 2'd3; // Data to general purpose registers
			  MenagePC <= 3'd1;
          end
			 8'd22: // XNOR
		    begin
			 oe <= 1'b1;
		     DataBus <= ~(ArgA ^ ArgB);
			  MemIO <= 2'd3; // Data to general purpose registers
			  MenagePC <= 3'd1;
          end
			 8'd23: // RJP
		    begin
			 oe <= 1'b0;
			 MemIO <= 2'b00;
		     PCSet <= (DataFromDecoder + 23'd1);
			  MenagePC <= 3'b100;
          end
			 8'd24: // JP
		    begin
			 oe <= 1'b0;
			 MemIO <= 2'b00;
		     PCSet <= DataFromDecoder;
			  MenagePC <= 3'b011;
          end
			 8'd25: // JPR 
		    begin
			  oe <= 1'b0;
			  MemIO <= 2'b00;
			  if(ValidMemoryData == 1'b1)
			   begin
				 PCSet <= DataIO;// 
				 MenagePC <= 3'd3;// Go to instruction
				 MemIO <= 2'd0;
				 ALUAddr <= 32'd0;
				end
			  else 
			   begin 
				  MemIO <= 2'd1; // Read Memory Request
			     ALUAddr <= ArgA;
				end
          end
			 8'd26: // JEQ
		    begin
			 oe <= 1'b0;
			 MemIO <= 2'b00;
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
			 oe <= 1'b0;
			 MemIO <= 2'b00;
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
			 oe <= 1'b0;
			 MemIO <= 2'b00;
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
			 oe <= 1'b0;
			 MemIO <= 2'b00;
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
			 oe <= 1'b0;
			 MemIO <= 2'b00;
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
			 oe <= 1'b0;
			 MemIO <= 2'b00;
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
			 oe <= 1'b0;
			 MemIO <= 2'b00;
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
		     if({ArgA,StatusRegVal[7]} == {ArgB,1'b0})
			   begin
				 SetSR[1] <=1'b1;
				 SetSR[0] <=1'b1;
				end
				else if({ArgA,StatusRegVal[7]} > {ArgB,1'b0})
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
			 oe <= 1'b0;
			 MemIO <= 2'b00;
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
			 oe <= 1'b1;
            DataBus <= ArgA;
				ALUAddr <= StackPointerAddr;
				MemIO <= 2'b10;
				InDecSP <= 2'b01;
				MenagePC <= 3'd1;
          end
			 8'd35: // POP
			 begin
			 oe <= 1'b0; 
				 if(ValidMemoryData == 1'b1)
			   begin
				 MemIO <= 2'b11;// Save DataBus to Rx
				 MenagePC <= 3'd1;// Go to next instruction
				 InDecSP <= 2'b10; //SP --;
				 ALUAddr <= 32'd0;
				end
				 else
				begin
				 ALUAddr <= StackPointerAddr;
				MemIO <= 2'b01;
				end
          end
			 8'd36: // LD
			 begin
			 oe <= 1'b0;
				 if(ValidMemoryData == 1'b1)
			   begin
				 MemIO <= 2'b11;// Save DataBus to Rx
				 MenagePC <= 3'd1;// Go to next instruction
				 ALUAddr <= 32'd0;
				 end
				 else
				 begin
				   ALUAddr <= ArgB;
				   MemIO <= 2'b01;
				 end
          end
			 8'd37: // LDI
			 begin
			  oe <= 1'b1;
            DataBus <= DataFromDecoder;
				MemIO <= 2'b11;// Save DataBus to Rx
				MenagePC <= 3'd1;// Go to next instruction
          end
			 8'd38: // MOV
			 begin
			 oe <= 1'b1;
            DataBus <= ArgB;
				MemIO <= 2'b11;
				MenagePC <= 3'd1;
          end
			 8'd39: // ST
			 begin
			 oe <= 1'b1;
            ALUAddr <= ArgA;
            DataBus <= ArgB;
				MemIO <= 2'b10;
				MenagePC <= 3'd1;
          end
			 8'd40: // STI
			 begin
			 oe <= 1'b1;
			   ALUAddr <= ArgA;
            DataBus <= DataFromDecoder;
				MemIO <= 2'b10;
				MenagePC <= 3'd1;
          end
			 8'd41: // SAP
			 begin
			 oe <= 1'b0;
            SetAP <= DataFromDecoder + 4'd1; // Do numeru rejestru dodaj 1 co wyzwoli proces ustawiania w rejestrze. 
				MenagePC <= 3'd1;
				MemIO <= 2'b00;
          end
			 8'd42: // SSP
			 begin
			 oe <= 1'b0;
			 MemIO <= 2'b00;
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
			 oe <= 1'b0;
            SetSR <= StatusRegVal | ArgA;
				MenagePC <= 3'd1;
				MemIO <= 2'b00;
          end
			 8'd45: // SAND
			 begin
			 oe <= 1'b0;
            SetSR <= StatusRegVal & ArgA;
				MenagePC <= 3'd1;
				MemIO <= 2'b00;
          end
			 8'd46: // SLD
			 begin
			 oe <= 1'b1;
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
			 oe <= 1'b1;
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
			 oe <= 1'b1;
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
