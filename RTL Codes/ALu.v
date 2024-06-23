
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mohamed Mabrouk Dawod
// 
// Create Date: 09/18/2023 
// Design Name: 
// Module Name: ALu
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

module ALu	
			#(parameter n = 32)
			(
			 input [n-1:0] A,B,
			 input [2:0] ALUControl,
			 output reg [n-1:0] ALUResult,
			 output reg zeroflag
			);
			
			always @(*)
			begin
				case (ALUControl)
					3'b000:ALUResult <= A & B;

					3'b001:ALUResult <= A | B;
					
					3'b010:ALUResult <= A + B;

					3'b100:ALUResult <= A - B;

					3'b101:ALUResult <= A * B;
					
					3'b110:ALUResult <= (A < B) ? 1'b1:1'b0;
					
					default:ALUResult <= 0;
				endcase
				
				zeroflag <= (ALUResult == 0);  // Set zero flag if result is zero
			end
			
endmodule
