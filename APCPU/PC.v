`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:35:17 01/11/2021 
// Design Name: 
// Module Name:    PC 
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
module PC(
    input wire clk,
    input wire [31:0] PCSet,
    input wire [2:0] PCDrive, //Menage Program Counter 000 - Do nothing, 001 - inc, 010 - dec, 011 - set 100 - add to current
    output reg [31:0] PCAddr,
    output reg GetInstruction
    );

always@(clk)
  begin
   if(clk == 1'b1)
	 begin
	  if(PCDrive == 3'b001)
	   begin
		 PCAddr <= PCAddr + 32'd1;
		 GetInstruction <= 1'b1;
		end
	  if(PCDrive == 3'b010)
	   begin
		 PCAddr <= PCAddr - 32'd1;
		 GetInstruction <= 1'b1;
		end
	  if(PCDrive == 3'b011)
	   begin
		 PCAddr <= PCSet;
		 GetInstruction <= 1'b1;
		end
	  if(PCDrive == 3'b100)
	   begin
		 PCAddr <= PCAddr + PCSet;
		 GetInstruction <= 1'b1;
		end
	  else
	   begin
		 GetInstruction <= 1'b0;
		end
	 end
	 else
	 begin
	  GetInstruction <= 1'b0;
	 end
  end
endmodule
