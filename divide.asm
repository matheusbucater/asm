// começo do if block (1)
@R1
D=M
@IF1
D;JEQ

// começo do else body (1)
// começo do if block (2)
@R0
D=M
@IF2
D;JEQ

// começo do else body (2)
@RETFUNx2
D=A
@returnd
M=D
@DIV
0;JMP
(RETFUNx2)
// fim do else body(2)
@ENDIF2
0;JMP

(IF2)
  // começo do if body (2)
  @R2
  M=0
  @R3
  M=0
  // fim do if body (2)
(ENDIF2)
// fim do if block (2)
// fim do else body (1)
@ENDIF1
0;JMP

(IF1)
  // começo do if body (1)
  @RETFUNx1
  D=A
  @returndbz
  M=D
  @DIVBYZERO
  0;JMP
  (RETFUNx1)
  // fim do if body (1)
(ENDIF1)
// fim do if block (1)

(END)
  @END
  0;JMP

(DIVU)
  @R2
  M=0
  @R0
  D=M
  @R3
  M=D
  

(DIVBYZERO)
  @R2
  M=0
  @32767
  D=A
  @R3
  M=D
  
  @returnd
  A=M
  0;JMP
