// Register B - the operation depends on clk and load
module regB(clk, loadB, dataBin, dataBout);
input clk;
input loadB;
input [18:0]dataBin;
output reg[18:0]dataBout;

reg [18:0]tempB;
always@(clk,loadB)begin
    if (loadB == 1)begin
        dataBout <= dataBin;
        tempB <= dataBin;
    end
    else if (load == 0)begin
        dataBout <= tempB;
    end
end
endmodule
