// Data Memory
module datamem(clk, we_DM, dataDM, addDM, outDM);
input clk;
input we_DM;
input [18:0]dataDM;
input [13:0]addDM;
output reg [18:0]outDM;

reg[18:0] mem [0:31];

always@(posedge clk)begin
    if(we_DM == 1)begin
        mem[addDM] = dataDM;
    end

    else if (we_DM == 0)begin
        outDM = mem[addDM];
    end
end
endmodule
