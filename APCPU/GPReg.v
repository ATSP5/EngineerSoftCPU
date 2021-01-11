`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:09:25 01/11/2021 
// Design Name: 
// Module Name:    GPReg 
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
module GPReg(
    input wire clk,
    input wire[2:0] SelX,
    input wire[2:0] SelY,
    input wire[2:0] SelZ,
    input wire[1:0] MemInstruction, //Menage data bus, 00-NOP, 01- Read from Mem, 10- Write to Mem 11 - Data to General Registers
    input wire[31:0] MemData,
    output reg[31:0] A,
    output reg[31:0] B
    );
    reg [31:0] Accumulator [0:7];
/*
	 initial 
	 begin
     integer i;
      for(i = 0; i < 8; i = i + 1)
    	 begin
        Accumulator[i] = 32'd0;
       end
    end
*/ 
    always@(clk)
  begin
   if(clk == 1'b1)
	 begin
	  if(MemInstruction == 2'b11)
	   begin
		 Accumulator[SelZ] <= MemData;
		end
	  A <= Accumulator[SelX];
	  B <= Accumulator[SelY];
	 end
  end
endmodule
