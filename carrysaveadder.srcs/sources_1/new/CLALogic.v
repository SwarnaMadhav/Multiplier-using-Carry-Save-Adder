`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2018 23:47:45
// Design Name: 
// Module Name: CLALogic
// Project Name: 
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


module CLALogic(P,G,cin,C);
input [3:0] P,G;
input cin;
output [4:0] C;
            
assign C[0] = cin;
assign C[1] = G[0] | (P[0] & cin);
assign C[2] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & cin);
assign C[3] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & cin);
assign C[4] = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & cin);

endmodule
