@ PROGRAMME DE TEST POUR LES INSTRUCTIONS
@ JINF et JSUP

@ Valeur des registres attendue :
@ R0 <- 0
@ R1 <- 1
@ R2 <- 0
@ R3 <- 15

main:   XOR R0 R0 R0  @ R0 <- 0
        ADDi R1 R0 1  @ R1 <- 1

        JSUP R1 R0 lab1
        XOR R2 R2 R2
        ADDi R2 R2 15

lab1:   JINF R1 R0 lab2
        XOR R3 R3 R3
        ADDi R3 R3 15

lab2:   JMP main
