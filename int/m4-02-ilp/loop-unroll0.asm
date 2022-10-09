loop:	fld f0, 0(x1)
	fadd.d f4, f0, f2
	fsd f4, 0(x1)
	fld f6, -8(x1)
	fadd.d f8, f6, f2
	fsd f8, -8(x1)
	fld f10, -16(x1)
	fadd.d f12, f10, f2
	fsd f12, -16(x1)
	fld f14, -24(x1)
	fadd.d f16, f14, f2
	fsd f16, -24(x1)
	addi x1, x1, -32
	bne x1, x2, loop	

