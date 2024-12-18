// Arithmetic Logic Unit
module ALU(a, b, opcode, mode, outALU, za, zb, eq, gt, lt);
input [18:0]a;
input [18:0]b;
input [4:0] opcode;
input mode;
output reg [18:0] outALU; // Output of Arithmetic Logic Unit
output reg za, zb, eq, gt, lt;  // these are the flags

wire [18:0] outau; // Output of Arithmetic unit
wire [18:0] outlu; // Output of Logic unit
wire tza, tzb, teq, tgt, tlt;

// Instantiation of both Arithmetic & Logic unit 
arithmeticUnit a1(.a(a),.b(b),.opcode(opcode),.outau(outau));
logicUnit l1(.a(a),.b(b),.opcode(opcode),.outlu(outlu),.za(tza),.zb(tzb),.eq(teq),.gt(tgt),.lt(tlt));


//at every change of a, b, mode and opcode, we need to select the output.

always@(a,b,mode,opcode)begin
    if(mode == 0)begin
        outALU = outau;
    end
    else if (mode == 1)begin
        outALU = outlu;
    end
    else begin
        outALU = 19'b0000_0000_0000_0000_000;
    end

    za = tza; zb = tzb; eq = teq; gt = tgt; lt = tlt;
end
endmodule
