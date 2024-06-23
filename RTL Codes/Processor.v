
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mohamed Mabrouk Dawod
// 
// Create Date: 09/20/2023 
// Design Name: 
// Module Name: Processor
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

module Processor
				 (
				 input clk,reset_n,
				 input [31:0] instr,
				 input [31:0] ReadData,
				 output [31:0] PC,ALUOut_,WriteData,
				 output MemWrite
				 );
				 
				 wire [2:0] ALUControl;
				 wire Jump,zero,PCSrc,MemtoReg,ALUSrc,RegDest,RegWrite;
				 
				 ControlUnit B1
				 (
					.OpCode(instr[31:26]),
					.Funct(instr[5:0]),
					.zero(zero),
					.Jump(Jump),
					.MemtoReg(MemtoReg),
					.MemWrite(MemWrite),
					.ALUSrc(ALUSrc),
					.RegDest(RegDest),
					.RegWrite(RegWrite),
					.PCSrc(PCSrc),
					.ALUControl(ALUControl)
				 );
						
				 DataPath  B2
				 (
					.clk(clk),
					.reset_n(reset_n),
					.instr(instr),
					.ReadData(ReadData),
					.ALUControl(ALUControl),
					.Jump(Jump),
					.PCSrc(PCSrc),
					.MemtoReg(MemtoReg),
					.ALUSrc(ALUSrc),
					.RegWrite(RegWrite),
					.RegDest(RegDest),
					.zero(zero),
					.ALUOut(ALUOut_),
					.PC(PC),
					.WriteData(WriteData) 
				 );
endmodule
