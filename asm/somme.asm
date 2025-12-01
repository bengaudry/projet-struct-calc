@ Valeur attendue des registres :
@ R1 <- 3
@ R2 <- 6
@ R7 <- 100

MAIN:   XOR R7 R7 R7    @ sp <- 0
		ADDi R7 R7 100  @ sp <- 100

        XOR R1 R1 R1
        ADDi R1 R1 3

        CALL PSH_RG     @ empile les args
        CALL SOMME

        CALL STOP


PSH_RG: ST R1 R7
        ADDi R7 R7 1
        RET



PLL_RG: SUBi R7 R7 1
        LD R1 R7
        RET



SOMME:  CALL PLL_RG   @ Récupération des args

        XOR R5 R5 R5  @ R5 <- 0

        JNEQ R1 R5 NOT0  @ if n == 0
            XOR R2 R2 R2
            RET

        @ Sauvegarde des registres
NOT0:   CALL PSH_RG

        @ empilement des args pour appel n2
        SUBi R1 R1 1  @ n <- n-1
        CALL PSH_RG

        CALL SOMME

        @ Restauration reg :
        CALL PLL_RG
        ADD R2 R2 R1
        
        RET


STOP:   JMP STOP
