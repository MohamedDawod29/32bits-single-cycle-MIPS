
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mohamed Mabrouk Dawod
// 
// Create Date: 09/20/2023 
// Design Name: 
// Module Name: MIPS32
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

module MIPS32
				(
				input clk,reset_n,
				output [15:0] test_value
				);
				
				wire MemWrite;
				wire [31:0] PC;
				wire [31:0] ALUOut_,WriteData,ReadData,instr;
				
				
					InstMem #(.width(32),.depth(256)) B1
					 (
					 .pc_A(PC),
					 .instr(instr)
					 );
					
					
					Processor B2
					 (
					 .clk(clk),
					 .reset_n(reset_n),
					 .instr(instr),
					 .ReadData(ReadData),
					 .PC(PC),
					 .ALUOut_(ALUOut_),
					 .MemWrite(MemWrite),
					 .WriteData(WriteData)
					 );
					 
					 
					 Data_Mem #(.n(32)) B3
					 (
					 .clk(clk),
					 .WE(MemWrite),
					 .A(ALUOut_),
					 .WD(WriteData),
					 .RD(ReadData),
					 .test_value(test_value)
					 );
				 

endmodule
