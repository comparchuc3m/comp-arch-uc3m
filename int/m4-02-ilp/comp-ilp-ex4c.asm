loop:	fld f0, 0(x1)
	addi x1, x1, -8
	fadd.d f4, f0, f2
	<stall>
	<stall>
	fsd f4, 8(x1)
	bne x1, x2, loop
