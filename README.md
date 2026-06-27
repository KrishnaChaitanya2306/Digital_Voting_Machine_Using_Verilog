# Digital Voting Machine with Secure Memory

## Overview

This project implements a Digital Voting Machine using Verilog HDL. The design allows votes to be cast for three candidates, stores vote counts in internal registers, and determines the winning candidate when the result signal is activated.

## Features

- Three Candidate Voting System
- Vote Counting Logic
- Winner Detection
- Reset Function
- Behavioral Simulation
- RTL Schematic Generation
- Logic Synthesis
- FPGA Implementation using Vivado 2019.1

## Software Used

- Xilinx Vivado 2019.1
- Verilog HDL

## Project Files

```
voting_machine.v
voting_tb.v
README.md
screenshots/
```

## Inputs

- clk
- reset
- vote1
- vote2
- vote3
- result

## Outputs

- count1
- count2
- count3
- winner

## Working

- Vote1 increments Candidate 1 count.
- Vote2 increments Candidate 2 count.
- Vote3 increments Candidate 3 count.
- Result signal determines the winning candidate.

## Simulation Result

Simulation confirms:

- Candidate 1 Votes = 3
- Candidate 2 Votes = 2
- Candidate 3 Votes = 1
- Winner = Candidate 1

## Project Flow

1. Design Entry using Verilog
2. Behavioral Simulation
3. RTL Analysis
4. Synthesis
5. Implementation

## Screenshots

- Waveform Simulation
- RTL Schematic
- Synthesis Result
- Implementation Result

## Author

Internship Project submitted as part of FPGA/VLSI Training.