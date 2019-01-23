`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2018 23:46:54
// Design Name: 
// Module Name: CLA
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


module CLA(A,B,cin,S,cout);
           input [3:0] A,B;
            input cin;
            output [3:0] S;
            output cout;
            
            
wire [3:0] P,G;
wire [4:0] C;   
    
assign P[0] = A[0] ^ B[0];
assign P[1] = A[1] ^ B[1];
assign P[2] = A[2] ^ B[2];
assign P[3] = A[3] ^ B[3];
assign G[0] = A[0] & B[0];
assign G[1] = A[1] & B[1];
assign G[2] = A[2] & B[2];
assign G[3] = A[3] & B[3];

CLALogic dut(P,G,cin,C);

assign S[0] = P[0] ^ C[0];
assign S[1] = P[1] ^ C[1];
assign S[2] = P[2] ^ C[2];
assign S[3] = P[3] ^ C[3];

assign cout = C[4];

endmodule