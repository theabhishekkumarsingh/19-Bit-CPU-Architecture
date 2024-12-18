// Instruction memory in CPU
module instmem(clk, we_IM, dataIM, addIM, outIM);
input clk;
input we_IM;
input [18:0]dataIM;
input [13:0]addIM;
output reg [18:0]outIM;

// memory is an array stored at particular address
reg [18:0] mem [0:18];

always@(posedge clk)begin
    if (we_IM == 1)begin
        mem[addIM] = dataIM;
    end

    else if (we_IM == 0)begin
        outIM = mem[addIM];
    end
end
endmodule
