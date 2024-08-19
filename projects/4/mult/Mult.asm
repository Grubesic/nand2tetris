// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.
@R2
M=0

@R0
D=M
@x
M=D

@R1
D=M
@y
M=D

@i
M=D // load y into i so that we can decrement the value each time we add it to the sum until 0

@x
D=M
@sum
M=D // load x into sum so that we can add it to itself i times

(LOOP)
@i
M=M - 1
D=M
@FINAL
D;JEQ

@sum
D=M
@x
D=D+M
@sum
M=D

@LOOP
0;JMP

(FINAL)
@sum
 D=M
 @R2
 M=D
 @END
 0;JMP


(END)
 @END
 0;JMP // infinite loop




