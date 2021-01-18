`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:30:23 01/11/2021 
// Design Name: 
// Module Name:    SR 
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
module SR(input wire clk,
    input wire rst,
    input wire [7:0] SRSet,
    output reg [7:0] SRData
    );

always@(posedge clk)
  begin
   if(rst == 1'b0)
	 begin
	  SRData <= SRSet; 
	 end
	 else
	 begin
	  SRData <= 8'd0;
	 end
  end
endmodule
