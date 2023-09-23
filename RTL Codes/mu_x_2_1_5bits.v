
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mohamed Mabrouk Dawod
// 
// Create Date: 09/18/2023 
// Design Name: 
// Module Name: mu_x_2_1_5bits
// Project Name: single cycle MIPS
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module mu_x_2_1_5bits
							(
							input sl,
							input[4:0] in_0,in_1,
							output reg[4:0] out
							);
							
							always @(*)
							begin
								if(1'b1 == sl)
									out = in_1;
								else
									out = in_0;
							end
endmodule 
