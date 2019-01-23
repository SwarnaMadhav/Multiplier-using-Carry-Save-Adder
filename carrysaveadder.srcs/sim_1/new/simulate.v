`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2018 23:17:00
// Design Name: 
// Module Name: simulate
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


module simulate();
reg clk;
reg [3:0] m,q;
wire [7:0] product;
//wire [7:0] S1,C1,S2,C2;
wire [5:0] S1,C1;
wire [6:0] S2,C2;

multiplier m1(m,q,product,S1,C1,S2,C2,clk);

initial begin
clk=0;
m=4'b0000; q=4'b0000;
//end

//always @(posedge clk) begin
m=4'b1001; q=4'b1111;
#10;
m=4'b0011; q=4'b1010;
#10;
m=4'b1100; q=4'b1011;
#10;
m=4'b0101; q=4'b1001;
#10 $stop;
end

//always #1 clk=!clk;
endmodule
