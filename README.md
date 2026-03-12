This file contains the main RTL design of an 8-bit Arithmetic Logic Unit (ALU) written in Verilog.
The ALU performs different arithmetic and logical operations based on the 3-bit control signal ("ALU_sel").
It takes two 8-bit inputs (A and B) and generates an 8-bit output ("ALU_Out") along with a carry output.
The design uses a combinational always block and case statement to implement multiple ALU operations such as addition, subtraction, AND, OR, XOR, NOT, and shift operations.
This module represents the core logic of the ALU and is used for RTL simulation and digital hardware design.
