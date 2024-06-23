
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mohamed Mabrouk Dawod
// 
// Create Date: 09/18/2023 
// Design Name: 
// Module Name: RegFile
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

module RegFile
				 #(parameter width = 32,depth = 32)
				 (
				 input clk,
				 input WE3,
				 input [4:0] A1,A2,A3,
				 input [31:0] WD3,
				 output [31:0] RD1,RD2
				 );
				 
				  reg [width-1:0] RegFile [0:depth-1];
				  
				  integer i;
				  initial
				  begin
					 for (i = 0; i < 32; i = i+1)
						RegFile [i] = 0;
				  end
				 
				 	
				always @(posedge clk) 
				begin
					 if (WE3) 
					 begin
						RegFile[A3] <= WD3; // Synchronous write
						RegFile[0]=32'b0; //always keep the value of $0 equal to zero
					 end
				end

				assign RD1 = RegFile[A1]; // Asynchronous read for RD1
				assign	RD2 = RegFile[A2]; // Asynchronous read for RD2

endmodule

