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
@ENDIF
0;JMP

(IF2)
  // começo do if body (2)
  @R2
  M=0
  @R3
  M=0
  // fim do if body (2)
// fim do if block (2)
// fim do else body (1)
@ENDIF
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
(ENDIF)
// fim do if block (1)

(END)
  @END
  0;JMP

(DIV)
  // começo if block (3)
  @R1
  D=M
  @IF3
  D;JLT

  // começo do else body (3)
  // começo do if block (4)
  @R0
  D=M
  @IF4
  D;JLT

  // começo do else body (4)
  @RETFUNx4
  D=A
  @returndu
  M=D
  @DIVU
  0;JMP
  (RETFUNx4)
  // fim do else body (4)
  @ENDIF2
  0;JMP

  (IF4)
    // começo do if body (4)
    @R0
    M=-M
  
    @RETFUNx5
    D=A
    @returnd
    M=D
    @DIV
    0;JMP
    (RETFUNx5)

    @R0
    M=-M

    // começo do if block (5)
    @R0
    D=M
    @IF5
    D;JEQ

    // começo do else body (5)
    @R2
    D=-M
    @R2
    M=D-1
    @R1
    D=M
    @R3
    M=D-M
    // fim do else body (5)
    @ENDIF2
    0;JMP

    (IF5)
      // começo do if body (5)
      @R2
      M=-M
      // fim do if body (5)

    // fim do if block(5)
    // fim do if body (4)
  
  // fim do if block (4)
  // fim do else body (3)
  @ENDIF2
  0;JMP

  (IF3)
    // começo do if body (3)
    @R1
    M=-M
    
    @RETFUNx3
    D=A
    @returnd
    M=D
    @DIV
    0;JMP
    (RETFUNx3)

    @R1
    M=-M
    @R2
    M=-M
    // fim do if body (3)
  (ENDIF2)
  // fim do if block (3)

(DIVU)
  @R2
  M=0
  @R0
  D=M
  @R3
  M=D

  (WHILE)
    @R3
    D=M
    @R1
    D=D-M
    @WHILE_BODY
    D;JGE

    @ENDWHILE
    0;JMP
  
  (WHILE_BODY)
    @R2
    M=M+1

    @R1
    D=M
    @R3
    M=M-D
    @WHILE
    0;JMP

  @returndu
  A=M
  0;JMP

(DIVBYZERO)
  @R2
  M=0
  @32767
  D=A
  @R3
  M=D
  
  @returndbz
  A=M
  0;JMP
