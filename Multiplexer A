// Multiplexer (A) - also known as data selector 
module muxA(in1, in2, sel, outA);
input sel;
input [18:0]in1;
input [18:0]in2;
output [18:0]outA;

assign outA = (sel == 1)? in1 : in2; // implemented using ternary operator
endmodule
