
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mohamed Mabrouk Dawod
// 
// Create Date: 09/18/2023 
// Design Name: 
// Module Name: ControlUnit
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

module ControlUnit
						(
						input [5:0] OpCode,
						input [5:0] Funct,
						input zero,
						output Jump,
						output MemtoReg,MemWrite,ALUSrc,RegDest,RegWrite,PCSrc,
					   output [2:0] ALUControl
						);
						
						wire Branch;
						wire [1:0] ALUOp;
						
						MainDecoder Block1
						(
						.OpCode(OpCode),
						.Jump(Jump),
						.ALUOp(ALUOp),
						.MemtoReg(MemtoReg),
						.MemWrite(MemWrite),
						.Branch(Branch),
						.ALUSrc(ALUSrc),
						.RegDest(RegDest),
						.RegWrite(RegWrite)
						);
						
						ALUDecoder Block2
						(
						.ALUOp(ALUOp),
					   .Funct(Funct),
					   .ALUControl(ALUControl)
						);
						
						and (PCSrc,zero,Branch);
endmodule 