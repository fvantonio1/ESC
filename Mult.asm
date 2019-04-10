// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

@R2
M=0  //atribui zero para o conteudo da memoria em R2.

@R1
D=M  //verifica se o conteudo da memoria em R1 é 0.

@END
D; JEQ  //caso seja zero, o programa para e o resultado é 0, armazenado em R2.

@R0
D=M  //verifica se o conteudo da memoria em R0 é 0.

@END
D; JEQ  //caso seja zero, o programa para e o resultado é 0, armazenado em R2.

(LOOP)

	@R0
	D=M

	@R2
	M = M + D
	
	@R1
	M = M - 1
	
	@R1
	D = M

	@LOOP
	D; JGT

(END)
	
	@END
	0; JMP