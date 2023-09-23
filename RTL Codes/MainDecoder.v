
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mohamed Mabrouk Dawod
// 
// Create Date: 09/18/2023 
// Design Name: 
// Module Name: MainDecoder
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

module MainDecoder 
						(
						input[5:0] OpCode,
						output reg [1:0] ALUOp,
						output reg Jump,
						output reg MemWrite,RegWrite,MemtoReg,RegDest,ALUSrc,Branch
						);
						
						always @(*)
						begin
							casez(OpCode)
								6'b100011:                    //lw
								begin
									Jump = 1'b0;
									ALUOp = 2'b00;
									MemWrite = 1'b0;
									RegWrite = 1'b1;
									RegDest = 1'b0;
									ALUSrc = 1'b1;
									MemtoReg = 1'b1;
									Branch = 1'b0;
								end
								
								6'b101011:                   //sw
								begin
									Jump = 1'b0;
									ALUOp = 2'b00;
									MemWrite = 1'b1;
									RegWrite = 1'b0;
									RegDest = 1'b0;
									ALUSrc = 1'b1;
									MemtoReg = 1'b1;
									Branch = 1'b0;
								end
								
								6'b000000:                     //R type
								begin
									Jump = 1'b0;
									ALUOp = 2'b10;
									MemWrite = 1'b0;
									RegWrite = 1'b1;
									RegDest = 1'b1;
									ALUSrc = 1'b0;
									MemtoReg = 1'b0;
									Branch = 1'b0;
								end
								
								6'b001000:                 //addi
								begin
									Jump = 1'b0;
									ALUOp = 2'b00;
									MemWrite = 1'b0;
									RegWrite = 1'b1;
									RegDest = 1'b0;
									ALUSrc = 1'b1;
									MemtoReg = 1'b0;
									Branch = 1'b0;
								end
								
								6'b000100:                    //beq
								begin
									Jump = 1'b0;
									ALUOp = 2'b01;
									MemWrite = 1'b0;
									RegWrite = 1'b0;
									RegDest = 1'b0;
									ALUSrc = 1'b0;
									MemtoReg = 1'b0;
									Branch = 1'b1;
								end
								
								6'b000010:                     //jal&j
								begin
									Jump = 1'b1;
									ALUOp = 2'b00;
									MemWrite = 1'b0;
									RegWrite = 1'b0;
									RegDest = 1'b0;
									ALUSrc = 1'b0;
									MemtoReg = 1'b0;
									Branch = 1'b0;
								end
								
								default:
								begin
									Jump = 1'b0;
									ALUOp = 2'b00;
									MemWrite = 1'b0;
									RegWrite = 1'b0;
									RegDest = 1'b0;
									ALUSrc = 1'b0;
									MemtoReg = 1'b0;
									Branch = 1'b0; 
								end
							endcase
						end
endmodule 