// C_PUSH constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// C_PUSH constant 333
@333
D=A
@SP
A=M
M=D
@SP
M=M+1

// C_PUSH constant 888
@888
D=A
@SP
A=M
M=D
@SP
M=M+1

// C_POP static 8
@SP
M=M-1
A=M
D=M
@8
M=D

// C_POP static 3
@SP
M=M-1
A=M
D=M
@3
M=D

// C_POP static 1
@SP
M=M-1
A=M
D=M
@1
M=D

// C_PUSH static 3
@3
D=M
@SP
A=M
M=D
@SP
M=M+1

// C_PUSH static 1
@1
D=M
@SP
A=M
M=D
@SP
M=M+1

// C_ARITHMETIC sub
@SP
M=M-1
A=M
D=M
A=A-1
M=M-D

// C_PUSH static 8
@8
D=M
@SP
A=M
M=D
@SP
M=M+1

// C_ARITHMETIC add
@SP
M=M-1
A=M
D=M
A=A-1
M=M+D

