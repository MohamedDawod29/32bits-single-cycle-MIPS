
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mohamed Mabrouk Dawod
// 
// Create Date: 09/18/2023 
// Design Name: 
// Module Name: add4
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

module add4
			 #(parameter n = 32)
			 (
			 input [n-1:0] pc,
			 output reg [n-1:0] PCPlus4
			 );
			 
			 always @(*)
			 begin
				PCPlus4 = pc + 4;
			 end
endmodule
