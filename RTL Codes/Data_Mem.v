
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mohamed Mabrouk Dawod
// 
// Create Date: 09/18/2023 
// Design Name: 
// Module Name: Data_Mem
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

module Data_Mem 
					#(parameter n = 32)
					(
					input clk,
					input WE,
					input [31:0] A,
					input [31:0] WD,
					output [31:0] RD,
					output [15:0] test_value
					);
					
					reg [31:0] Data_Mem [0:255];
					
					integer i;
				   initial
				   begin
					  for (i = 0; i < 256; i = i+1)
						 Data_Mem [i] = 0;
				   end
						
						
					always @(posedge clk) 
					begin
						 if (WE)
							Data_Mem[A] <= WD; // Synchronous write
					end

					assign RD = Data_Mem[A]; // Asynchronous read
					assign test_value = Data_Mem[32'h0000_0000][15:0]; // Test value read from address 0x0000_0000

endmodule
