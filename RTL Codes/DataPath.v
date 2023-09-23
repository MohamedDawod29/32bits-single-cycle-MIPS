
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mohamed Mabrouk Dawod
// 
// Create Date: 09/20/2023 
// Design Name: 
// Module Name: DataPath
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

module DataPath
					(
					input clk,reset_n,
					input [31:0] instr,
					input [31:0] ReadData,
					input [2:0] ALUControl,
					input Jump,PCSrc,MemtoReg,ALUSrc,RegWrite,RegDest,
					output zero,
					output [31:0] ALUOut,PC,WriteData 
					);
					
					
					/********************************************************************************************/
					wire [31:0] PCPlus4;
					wire [31:0] instrS2;
					wire [31:0] SignImm;
					wire [31:0] SignImmS2;
					wire [31:0] PCBranch;
					wire [31:0] SrcA;
					wire [31:0] Out_In_0,Out_IN_0;
					wire [31:0] PCJump = {PCPlus4[31:28],instrS2[27:0]};
					wire [31:0] pc_bar,Pc_bar;
					wire [31:0] SrcB;
					wire [31:0] Result;
					wire [4:0] WriteReg;
					/********************************************************************************************/
					
					PC #(.n(32)) B1
					(
					.clk(clk),
					.reset_n(reset_n),
					.pc_bar(pc_bar),
					.pc(PC)
					);
					
					/********************************************************************************************/
					
					add4 #(.n(32)) B2
					(
					.pc(PC),
					.PCPlus4(PCPlus4)
					);
					
					/*******************************************************************************************/
					
					sl2 #(.n(32)) B3
					(
					.signimm(instr[25:0]),
					.signimmsl2(instrS2)
					);
					
					/*******************************************************************************************/
					
					mu_x_2_1_5bits B4
					(
					.sl(RegDest),
					.in_0(instr[20:16]),
					.in_1(instr[15:11]),
					.out(WriteReg)
					);
					
					/********************************************************************************************/
					
					sign_extend B5
					(
					.imm(instr[15:0]),
					.Signimm(SignImm)

					);
					
					/*******************************************************************************************/
					
					sl2 #(.n(32)) B6
					(
					.signimm(SignImm),
					.signimmsl2(SignImmS2)
					);
					
					/*******************************************************************************************/
					
					PCBranch B7
					(
					.PCPlus4(PCPlus4),
					.signimmsl2(SignImmS2),
					.PCBranch(PCBranch)
					);
					
					/*******************************************************************************************/
					
					RegFile #(.width(32), .depth(32)) B8
					(
					.clk(clk),
					.WE3(RegWrite),
					.A1(instr[25:21]),
					.A2(instr[20:16]),
					.A3(WriteReg),
					.WD3(Result),
					.RD1(SrcA),
					.RD2(WriteData)
					);
					
					/*******************************************************************************************/	
					
					mu_x2_1_32bits B9
					(
					.sl(PCSrc),
					.in_0(PCPlus4),
					.in_1(PCBranch),
					.out(Out_In_0)
					);
					
					/*******************************************************************************************/

					mu_x2_1_32bits B10
					(
					.sl(Jump),
					.in_0(Out_In_0),
					.in_1(PCJump),
					.out(pc_bar)
					);
					
					/*******************************************************************************************/
					
					mu_x2_1_32bits B11
					(
					.sl(ALUSrc),
					.in_0(WriteData),
					.in_1(SignImm),
					.out(SrcB)
					);
					
					/*******************************************************************************************/
					
					ALu #(.n(32)) B12
					(
					.A(SrcA),
					.B(SrcB),
					.ALUControl(ALUControl),
					.ALUResult(ALUOut),
					.zeroflag(zero)
					);
					
					/*******************************************************************************************/
					
					mu_x2_1_32bits B13
					(
					.sl(MemtoReg),
					.in_0(ALUOut),
					.in_1(ReadData),
					.out(Result)
					);


endmodule

			
