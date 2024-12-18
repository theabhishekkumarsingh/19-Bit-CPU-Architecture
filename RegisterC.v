// Register C - the operation depends on clk and load
module regC(clk, loadC, dataCin, dataCout);
input clk;
input loadC;
input [18:0]dataCin;
output reg[18:0]dataCout;

reg[18:0]tempC;
always@(clk,loadC)begin
    if (load == 1)begin
        dataCout <= dataCin;
        tempC <= dataCin;
    end
    else if (load == 0)begin
        dataCout <= tempC;
    end
end
endmodule
