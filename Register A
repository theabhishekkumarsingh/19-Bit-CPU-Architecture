// Register A - the operation depends on clk and load
module regA(clk, loadA, dataAin, dataAOut);
input clk;
input loadA;
input [18:0]dataAin; 
output reg[18:0]dataAout;

reg [18:0]tempA; // Temporary register

always@(clk, loadA)begin
    if (loadA == 1)begin
      dataAout <= dataAin;
      tempA <= dataAin;
    end

    else if(loadA == 0)begin
      dataAout <= tempA;
    end
end
endmodule
