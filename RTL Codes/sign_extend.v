
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mohamed Mabrouk Dawod
// 
// Create Date: 09/18/2023 
// Design Name: 
// Module Name: sign_extend
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

module sign_extend 
						(
						input [15:0] imm,
						output reg [31:0] Signimm
						);
						
						always @(imm)
						begin
							Signimm = {{16{imm[15]}},imm};
						end
endmodule 
