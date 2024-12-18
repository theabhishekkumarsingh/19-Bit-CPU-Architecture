// Multiplexer (B) = also known as data selector 
module muxB(in1, in2, sel, outB);
input sel;
input [13:0]in1;
input [13:0]in2;
output [13:0]outB;

assign outB = (sel == 1)? in1 : in2; // implemented using ternary operator 
endmodule
