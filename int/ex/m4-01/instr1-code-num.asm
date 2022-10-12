loop: 	lw t1, 1000(s0)    // I1
	lw t2, 2000(s0)    // I2
	add t2, t1, t2     // I3
	sw t2, 3000(s0)    // I4
	addi s0, s0, 4     // I5
	bne s0, s1, loop   // I6
