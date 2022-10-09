loop:	fld f0, 0(x1)
	<stall>
	fadd.d f4, f0, f2
	<stall>
	<stall>
	fsd f4, 0(x1)
	addi x1, x1, -8
	bne x1, x2, loop
