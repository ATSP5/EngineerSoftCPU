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
	 input wire rst,
    input wire[2:0] SelX,
    input wire[2:0] SelY,
    input wire[2:0] SelZ,
    input wire[1:0] MemInstruction, //Menage data bus, 00-NOP, 01- Read from Mem, 10- Write to Mem 11 - Data to General Registers
    input wire[31:0] MemData,
    output reg[31:0] A,
    output reg[31:0] B
    );
    reg [31:0] Accumulator [0:7];
	 
    always@(posedge clk)
  begin
   if(rst == 1'b0)
	 begin
	  A <= Accumulator[SelX];
	  B <= Accumulator[SelY]; 
	  if(MemInstruction == 2'b11)
	   begin
		 Accumulator[SelZ] <= MemData;
		end
	  end
	 else
	  begin
	   A <= 32'd0;
		B <= 32'd0;
		Accumulator[0] <= 32'd0;
		Accumulator[1] <= 32'd0;
		Accumulator[2] <= 32'd0;
		Accumulator[3] <= 32'd0;
		Accumulator[4] <= 32'd0;
		Accumulator[5] <= 32'd0;
		Accumulator[6] <= 32'd0;
		Accumulator[7] <= 32'd0;
	  end
  end
endmodule
