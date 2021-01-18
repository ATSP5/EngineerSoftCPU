`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:30:45 01/11/2021 
// Design Name: 
// Module Name:    SP 
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
module SP(input wire clk,
    input wire rst,
    input wire [31:0] SPSet,
    input wire [1:0] SPDrive, //Increment/Decrement SP 00 - Do nothing 01 - Increment 10 - Decrement 11 - Set SP 
    output reg [31:0] SPOutput
    );
	 
always@(posedge clk)
  begin
   if(rst == 1'b0)
	 begin
	  if(SPDrive == 2'b01)
	   begin
		 SPOutput <= SPOutput + 32'd1;
		end
	  if(SPDrive == 2'b10)
	   begin
		 SPOutput <= SPOutput - 32'd1;
		end
	  if(SPDrive == 2'b11)
	   begin
		 SPOutput <= SPSet;
		end
	end
	  else
	   begin
		 SPOutput <= 32'd0;
		end
  end
endmodule
