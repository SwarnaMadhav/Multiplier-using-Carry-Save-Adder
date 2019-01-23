`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2018 22:39:15
// Design Name: 
// Module Name: fulladder
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

module fulladder(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
assign sum = a^b^cin;
assign cout= (a&b) | (b&cin) | (cin&a);
endmodule
