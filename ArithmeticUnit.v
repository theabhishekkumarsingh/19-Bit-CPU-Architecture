//-----------------------Arithmetic Unit--------------------------------
module arithmeticUnit(a,b,opcode,outau);
input [18:0]a;
input [18:0]b;
input [4:0] opcode;
output reg [18:0]outau = 0;

always@(a,b,opcode)begin
    case(opcode)
    5'b00000: outau = a + b;
    5'b00001: if (a > b)begin
              outau = a - b;end
              else begin
              outau = b - a;end
    5'b00010: outau = a * b;
    5'b00011: if (a > b)begin
              outau = b / a;end
              else (a < b)begin
              outau = a / b;end
    5'b00100: outau = a + 1; // increment of a
    5'b00101: outau = b + 1; // increment of b
    5'b00110: outau = a - 1; // decrement of a
    5'b00111: outau = b - 1; // decrement of b
    default : outau = 19'b0000_0000_0000_0000_000;
    endcase
end
endmodule
