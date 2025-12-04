@ PROGRAMME DE TEST POUR L'INSTRUCTION
@ JMP


@ Valeur des registres attendue : 
@ R0 <- 1

        XOR R0 R0 R0
        JMP noadd
        ADDi R0 R0 5
noadd:  ADDi R0 R0 1

end:    JMP end
