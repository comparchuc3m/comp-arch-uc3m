     addi x3, x1, -2
     bnez x3, L1
     add  x1, x0, x0
L1:  addi x3, x2, -5
     bnez x1, L2
     add  x2, x0, x0
L2:  sub  x3, x1, x2
     beqz x3, L3	
