//----------------------Logic Unit----------------------------
module logicUnit(a,b,opcode,outlu,eq,za,zb,gt,lt);
input [18:0]a;
input [18:0]b;
input [4:0] opcode;
output reg[18:0]outlu=0;
output reg za=0, zb=0, eq=0, gt=0, lt=0;

always@(a,b,opcode)begin
    case(opcode)
    5'b01000: outlu = a & b;  // bitwise and operation
    5'b01001: outlu = a | b; // bitwise or operation
    5'b01010: outlu = a ^ b; //bitwise xor operation
    5'b01011: outlu = ~a ; // bitwise not operation
    5'b01100: outlu = ~b ; // bitwise not operation
    endcase
end

always@(a,b)begin
    if (a == b)begin eq = 1;end
    else begin eq = 0;end

    if (a > b)begin gt = 1;end
    else begin gt = 0;end

    if (a < b)begin lt = 1;end
    else begin lt = 0; end

    if (a == 19'b0000_0000_0000_0000_000)begin za = 1;end
    else begin za = 0;end

    if (b == 19'b0000_0000_0000_0000_000)begin zb = 1;end
    else begin zb = 0;end
end
endmodule
