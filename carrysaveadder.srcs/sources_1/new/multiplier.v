`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2018 22:49:46
// Design Name: 
// Module Name: multiplier
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


module multiplier(m,q,product,S1,C1,S2,C2,clk);
input clk;
input [3:0] m;
input [3:0] q;
output [7:0] product;
//integer k=0;
output [5:0] S1,C1;
output [6:0] S2,C2;

//wire product;
//reg S1,C1,S2,C2;
wire p0,s1,c1,s2,c2,s3,c3,s4,c4,s5,c5,s6,c6,s7,c7,s8,c8,cout;
wire [3:0] S;
parameter k=1'b0;

assign p0= m[0]*q[0];
fulladder fa1(.a(m[1]*q[0]), .b(m[0]*q[1]),.cin(k),.sum(s1),.cout(c1));
fulladder fa2(.a(m[1]*q[1]), .b(m[2]*q[0]),.cin(m[0]*q[2]),.sum(s2),.cout(c2));
fulladder fa3(.a(m[3]*q[0]), .b(m[2]*q[1]),.cin(k),.sum(s3),.cout(c3));
fulladder fa4(.a(k), .b(m[3]*q[1]),.cin(m[2]*q[2]),.sum(s4),.cout(c4));

fulladder fa5(.a(c1), .b(s2),.cin(k),.sum(s5),.cout(c5));
fulladder fa6(.a(c2), .b(s3),.cin(m[0]*q[3]),.sum(s6),.cout(c6));
fulladder fa7(.a(c3), .b(s4),.cin(m[1]*q[3]),.sum(s7),.cout(c7));
fulladder fa8(.a(c4), .b(m[3]*q[2]),.cin(m[2]*q[3]),.sum(s8),.cout(c8));

CLA uut(.A({c8,c7,c6,c5}), .B({m[3]*q[3] , s8,s7,s6}), .cin(k), .S(S), .cout(cout));

assign product={cout,S,s5,s1,p0};
//end
assign S1={m[3]*q[2],s4,s3,s2,s1,p0};
assign C1={k,c4,c3,c2,c1,k};
assign S2={m[3]*q[3],s8,s7,s6,s5,s1,p0};
assign C2= {k,c8,c7,c6,c5,k,k};
endmodule
