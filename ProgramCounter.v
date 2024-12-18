// Program Counter
module PC(clk, loadPC, incPC, address, execadd);
input clk;
input loadPC;
input incPC;
input[13:0]address;
output reg [13:0]execadd;

reg[13:0] temp;

always@( posedge clk)begin
    if (loadPC == 0 && incPC = 0)begin
        temp <= 14'b0000_0000_0000_00;
    end
    else if (loadPC == 1 && incPC == 0)begin
        temp <= address;
    end
    else if (loadPC == 0 && incPC == 1)begin
        temp <= temp + 14'b0000_0000_0000_01;
    end
    else begin
        temp <= temp;
    end
    execadd <= temp; // value of temporary reg is assigned to the output of the Program Counter
end
endmodule
