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
    input wire [3:0] APSet,
    output reg [3:0] APSel
    );

 always@(clk)
  begin
   if(APSet >0 && clk == 1'b1)
	 begin
	  APSel <= APSet - 4'd1; // Odejmij 1 od ustawienia bo dla 0 ma nie robiæ nic.
	 end
  end
endmodule
