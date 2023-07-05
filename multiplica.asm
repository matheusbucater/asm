// começo do if[or] block (1)
@R0
@D=M
@IF1
D;JEQ

@R1
D=M
@IF1
D;JEQ

// começo else body (1)
// começo do if[and] block (2)
@R0
D=M
@AND
D;JLT

@ELSE2
0;JMP

(AND)
  @R1
  D=M
  @IF2
  D;JLT

(ELSE2)
  // começo do else body (2)
  // começo do if block (3)
  @R0
  D=M
  @IF3
  D;JLT
  
  // começo do else body (3)
  // começo do if block (4)
  @R1
  D=M
  @IF4
  D;JLT

  // começo do else body (4)
  @RETFUNx3
  D=A
  @return
  M=D
  @FUN
  0;JMP
  (RETFUNx3)
  // fim do else body (4)
  @ENDIF4
  0;JMP

  (IF4)
    // começo do if body (4)
    @R1
    M=-M
    
    @RETFUNx4
    D=A
    @return
    M=D
    @FUN
    0;JMP
    (RETFUNx4)

    @R1
    M=-M
    @R2
    M=-M
    // fim do if body (4)
  (ENDIF4)
  // fim do if block (4)
  // fim do else body (3)
  @ENDIF3
  0;JMP

  (IF3)
    // começo do if body (3)
    @R0
    M=-M
    
    @RETFUNx2
    D=A
    @return
    M=D
    @FUN
    0;JMP
    (RETFUNx2)

    @R0
    M=-M
    @R2
    M=-M
    // fim do if body (3)
  (ENDIF3)
  // fim do if block (3)
  // fim do else body (2)
  @ENDIF2
  0;JMP

(IF2)
  // começo do if body (2)
  @R0
  M=-M
  @R1
  M=-M
  
  @RETFUNx1
  D=A
  @return
  M=D
  @FUN
  0;JMP
  (RETFUNx1)

  @R0
  M=-M
  @R1
  M=-M
  // fim do if body (2)
(ENDIF2)
// fim do if[and] block (2)

// fim do else body (1)

@ENDIF1
0;JMP

(IF1)
  // começo do if body (1)
  @R2
  M=0
  // fim do if body (1)
(ENDIF1)
// fim do if[or] block (1)

(END)
  @END
  0;JMP

// fun block
(FUN)
  @R1
  D=M
  @R2
  M=D

  @R0
  D=M-1
  @i
  M=D

  (WHILE)
    @i
    D=M
    @WHILE_BODY
    D;JGT
    
    @ENDWHILE
    0;JMP
  (WHILE_BODY) 
    @R1
    D=M
    @R2
    M=D+M
        
    @i
    M=M-1
    @WHILE
    0;JMP
  (ENDWHILE)

    @return
    A=M
    0;JMP
