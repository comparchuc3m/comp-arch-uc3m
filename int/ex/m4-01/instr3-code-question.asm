i0:	lw t3, 0(t0)
i1:	lw t1, 0(t3)
i2:	addi t1, t1, 1
i3:	sub t4, t3, t2
i4:	sw t1, 0(t3)
i5:	bnz t4, i0
