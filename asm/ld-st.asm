@ PROGRAMME DE TEST POUR LES INSTRUCTIONS
@ LD et ST

@ Valeur des registres attendue :
@ R0 <- 8
@ R1 <- 42

@ Valeur en mémoire attendue :
@ Mem[8] <- 42

XOR R0 R0 R0
ADDi R0 R0 8

XOR R1 R1 R1
ADDi R1 R1 42

ST R1 R0
LD R7 R0
