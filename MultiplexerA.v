// Multiplexer (A) - also known as data selector 
module muxA(clk,in1, in2, sel, outA);
input clk;
input sel;
input [18:0]in1;
input [18:0]in2;
output reg [18:0]outA;

always@(posedge clk)
begin
    if (sel == 1)begin
        outA <= in1;
    end
    else if (sel == 0)begin
        outA <= in2;
    end
end
endmodule
