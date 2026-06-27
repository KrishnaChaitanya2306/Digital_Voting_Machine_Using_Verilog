`timescale 1ns / 1ps

module voting_machine(

    input clk,
    input reset,
    input vote1,
    input vote2,
    input vote3,
    input result,

    output reg [7:0] count1,
    output reg [7:0] count2,
    output reg [7:0] count3,

    output reg [1:0] winner

);

always @(posedge clk or posedge reset)
begin

    if(reset)
    begin
        count1 <= 0;
        count2 <= 0;
        count3 <= 0;
        winner <= 0;
    end

    else
    begin

        if(vote1)
            count1 <= count1 + 1;

        else if(vote2)
            count2 <= count2 + 1;

        else if(vote3)
            count3 <= count3 + 1;

        if(result)
        begin

            if(count1>=count2 && count1>=count3)
                winner<=2'b01;

            else if(count2>=count1 && count2>=count3)
                winner<=2'b10;

            else
                winner<=2'b11;

        end

    end

end

endmodule