`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:45:00 01/12/2021 
// Design Name: 
// Module Name:    Decoder 
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
module Decoder( input wire clk,
    input wire[31:0] InstructionBus,
    input wire[2:0] APSelBus,
    output reg[7:0] AluCode,
    output reg[23:0] DecoderData,
    output reg[2:0] RegSelX,
    output reg[2:0] RegSelY,
    output reg[2:0] RegSelZ
    );
    always @(clk)
	  begin
	   if(clk == 1'b1)
		 begin
		 AluCode <= InstructionBus[7:0];
		  case(InstructionBus[7:0])
		   8'd255: //Przeka¿ tylko instrukcje
			 begin
			 end
			8'd1,8'd2,8'd5,8'd6,8'd9,8'd11,8'd23,8'd24,8'd26,8'd27,8'd28,8'd29,8'd30,8'd33,8'd37,8'd40,8'd41:// Instrukcja typu: {x[8]} L[24] z docelowym rejestrem w AP lub ignoruj¹ce ArgA i/lub ArgB
			 begin
			  DecoderData <= InstructionBus[31:8];
			  RegSelX <= APSelBus;
			  RegSelZ <= APSelBus;
			 end
			 8'd3,8'd4,8'd7,8'd8,8'd10,8'd12,8'd31,8'd32,8'd39,8'd42,8'd44,8'd45,8'd48: // Instrukcja typu: {x[8]} Rx[3] Ry[3] Rz[3] 0[15] lub ignoruj¹ce pewne argumenty
			 begin
			  RegSelX <= InstructionBus[10:8];
			  RegSelY <= InstructionBus[13:11];
			  RegSelZ <= InstructionBus[16:14];
			 end
			 8'd13,8'd14,8'd15,8'd16: // Instrukcja typu{x[8]} Rx[3] L [6] 0[15]
			  begin
			   RegSelX <= InstructionBus[10:8];
				DecoderData <= InstructionBus[16:11];
				end
			 8'd17,8'd18,8'd19,8'd20,8'd21,8'd22,8'd38: //Instrukcje typu: {x[8]} Rx[3] Ry [3] 0[18] z docelowym Rx
			   begin
				 RegSelX <= InstructionBus[10:8];
			    RegSelY <= InstructionBus[13:11];
			    RegSelZ <= InstructionBus[10:8];
				end
				8'd25,8'd34://Instrukcje typu {x[8]} Rx[3] 0[18]
				 begin
				  RegSelX <= InstructionBus[10:8];
				 end
				 8'd35,8'd46://Instrukcje typu {x[8]} Rz[3] 0[18]
				 begin
				  RegSelZ <= InstructionBus[10:8];
				 end
				 8'd36,8'd49://Instrukcje typu {x[8]} Rx[3](Docelowy) Ry [3] 0[18]
				 begin
				  RegSelZ <= InstructionBus[10:8];
				  RegSelY <= InstructionBus[13:11];
				 end
   		 endcase
	  end
	 end
endmodule
