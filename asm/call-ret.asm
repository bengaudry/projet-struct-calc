@ Valeur des registres attendue :
@ R0 <- 6

		CALL main


inc:	ADDi R0 R0 1
		RET

main:	XOR R0 R0 R0
		CALL inc
		ADDi R0 R0 4
		CALL inc
