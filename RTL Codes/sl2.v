
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mohamed Mabrouk Dawod
// 
// Create Date: 09/18/2023 
// Design Name: 
// Module Name: sl2
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

module sl2 
			 #(parameter n = 32)
			 (
			 input [n-1:0] signimm,
			 output reg [n-1:0] signimmsl2
			 );
			 
			 always @(signimm)
			 begin
				signimmsl2 = signimm << 2;
			 end
endmodule 
