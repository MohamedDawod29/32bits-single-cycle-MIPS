
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mohamed Mabrouk Dawod
// 
// Create Date: 09/18/2023 
// Design Name: 
// Module Name: PCBranch
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

module PCBranch
					(
					input [31:0] PCPlus4,signimmsl2,
					output reg [31:0] PCBranch
					);
					
					always @(*)
					begin
						PCBranch = PCPlus4 + signimmsl2;
					end
endmodule

