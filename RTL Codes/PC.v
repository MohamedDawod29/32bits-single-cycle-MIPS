
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mohamed Mabrouk Dawod
// 
// Create Date: 09/18/2023 
// Design Name: 
// Module Name: PC
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

module PC	
			#(parameter n = 32)
			(
			 input clk,reset_n,
			 input [n-1:0] pc_bar,
			 output [n-1:0] pc
			);
			
			reg [n-1:0] pc_reg,pc_next;
			
			always @(posedge clk,negedge reset_n)
			begin
				if (~reset_n)
					pc_reg <= 0;
				else
				   pc_reg <= pc_next;
			end
			
			always @(*)
			begin
				pc_next = pc_bar;
			end
			
			assign pc = pc_reg;
endmodule
