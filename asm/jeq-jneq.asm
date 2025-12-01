@ PROGRAMME DE TEST POUR LES INSTRUCTIONS
@ JEQ et JNEQ

@ Valeur des registres attendue : 
@ R0 <- 5
@ R1 <- 5

        XOR R0 R0 R0
        ADDi R0 R0 4
        ADDi R1 R0 0

        JNEQ R0 R1 jmpif1
        ADDi R1 R1 1

jmpif1: ADDi R0 R0 1

        JEQU R0 R1 jmpif2
        ADDi R1 R1 5

jmpif2: XOR R2 R2 R2

