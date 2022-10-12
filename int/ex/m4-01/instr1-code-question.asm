loop: 	lw t1, 1000(s0)
	lw t2, 2000(s0)
	add t2, t1, t2
	sw t2, 3000(s0)
	addi s0, s0, 4
	bne s0, s1, loop
