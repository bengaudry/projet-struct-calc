@ PROGRAMME DE TEST POUR LES INSTRUCTIONS UAL
@ SL et SR

@ Valeur des registres attendue :
@ R0 <- 2
@ R7 <- 16

			XOR R0 R0 R0
			ADDi R0 R0 1
			SLi R0 R0 1

			SLi R7 R0 2
			XOR R4 R4 R4
			ADDi R4 R4 1

end:	JMP end
