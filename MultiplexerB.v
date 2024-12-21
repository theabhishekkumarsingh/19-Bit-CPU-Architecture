// Multiplexer (B) = also known as data selector 
module muxB(clk, in1, in2, sel, outB);
input clk;
input sel;
input [13:0]in1;
input [13:0]in2;
output reg [13:0]outB;

always@(posedge clk)begin
    if(sel == 1)begin
        outB <= in1;
    end
    else if (sel == 0)begin
        outB <= in2;
    end
end 
endmodule
