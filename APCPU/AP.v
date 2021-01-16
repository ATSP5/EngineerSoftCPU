`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:44:55 01/10/2021 
// Design Name: 
// Module Name:    AP 
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
module AP( input wire clk,
    input wire rst, // Pod��czy� do grst (Global Reset) nie do clk
    input wire [3:0] APSet,
    output reg [3:0] APSel
    );

 always@(posedge clk or posedge rst)
  begin
  if(rst == 1'b1)
	  begin
	   APSel <= 4'd0;
	  end
	else
	begin
   if(APSet >0)
	 begin
	  APSel <= APSet - 4'd1; // Odejmij 1 od ustawienia bo dla 0 ma nie robi� nic.
	 end
	 end
  end
endmodule
