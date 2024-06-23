
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mohamed Mabrouk Dawod
// 
// Create Date: 09/18/2023 
// Design Name: 
// Module Name: InstMem
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

module InstMem
				 #(parameter width = 32,depth = 256)
				 (
				 input [width-1:0] pc_A,
				 output reg [width-1:0] instr
				 );
				 
				 reg [width-1:0] InstMem [0:depth-1];
				 
				 
				 /********************************FIND GCD FOR 120 and 180********************************/
				 initial 
				 begin
					InstMem[0] = 32'h00008020;
					InstMem[1] = 32'h20100078; // change the least two significant decimals with the number
					InstMem[2] = 32'h00008820;
					InstMem[3] = 32'h201100B4; // change the least two significant decimals with the number.
					InstMem[4] = 32'h00009020;
					InstMem[5] = 32'h12110006;
					InstMem[6] = 32'h0211482A;
					InstMem[7] = 32'h11200002;
					InstMem[8] = 32'h02308822;
					InstMem[9] = 32'h08000005;
					InstMem[10] = 32'h02118022;
					InstMem[11] = 32'h08000005;
					InstMem[12] = 32'h00109020;
					InstMem[13] = 32'hAC120000;
				 end
				 
				 /********************************FIND FACTORIAL OF NUMBER 7********************************/
				 /*initial 
				 begin
					InstMem [0] = 32'h00008020;           //add $s0, $0, $0
					InstMem [1] = 32'h20100007;           //addi $s0, $0, 7
					InstMem [2] = 32'h00008820;           //add $s1, $0, $0
					InstMem [3] = 32'h20110001;          //addi $s1, $0, 1
					InstMem [4] = 32'h12000003;          //beq $s1, $0, 3
					InstMem [5] = 32'h0230881C;          //mul $s1, $s1, $s0
					InstMem [6] = 32'h2210FFFF;          //addi $s0, $s0, -1
					InstMem [7] = 32'h08000004;          //J  4
					InstMem [8] = 32'hAC110000;          //sw $s1, 0($0)
				 end*/
				 
				 /******************************************************************************************/
				 
				 always @(*) 
				 begin
					instr = InstMem[pc_A[9:2]]; // Read the instruction from the ROM memory
				 end

endmodule
			
				  
