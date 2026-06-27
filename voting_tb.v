`timescale 1ns / 1ps

module voting_tb;

reg clk;
reg reset;
reg vote1;
reg vote2;
reg vote3;
reg result;

wire [7:0] count1;
wire [7:0] count2;
wire [7:0] count3;
wire [1:0] winner;

voting_machine uut(

.clk(clk),
.reset(reset),
.vote1(vote1),
.vote2(vote2),
.vote3(vote3),
.result(result),

.count1(count1),
.count2(count2),
.count3(count3),

.winner(winner)

);

always
#5 clk = ~clk;

initial
begin

clk=0;
reset=1;

vote1=0;
vote2=0;
vote3=0;
result=0;

#20;

reset=0;

// Candidate 1 Vote
vote1=1;
#10;
vote1=0;

// Candidate 2 Vote
#10;
vote2=1;
#10;
vote2=0;

// Candidate 2 Vote
#10;
vote2=1;
#10;
vote2=0;

// Candidate 3 Vote
#10;
vote3=1;
#10;
vote3=0;

// Candidate 1 Vote
#10;
vote1=1;
#10;
vote1=0;

// Candidate 1 Vote
#10;
vote1=1;
#10;
vote1=0;

// Display Result
#20;
result=1;
#10;
result=0;

#50;

$finish;

end

endmodule