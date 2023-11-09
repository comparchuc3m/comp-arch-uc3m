loop:	fld f0, 0(x1)
	<stall>
	fadd.d f4, f0, f2
	<stall>
	<stall>
	fsd f4, 0(x1)
	fld f6, -8(x1)
	<stall>
	fadd.d f8, f6, f2
	<stall>
	<stall>
	fsd f8, -8(x1)
	fld f10, -16(x1)
	<stall>
	fadd.d f12, f10, f2
	<stall>
	<stall>
	fsd f12, -16(x1)
	fld f14, -24(x1)
	<stall>
	fadd.d f16, f14, f2
	<stall>
	<stall>
	fsd f16, -24(x1)
	addi x1, x1, -32
	bne x1, x2, loop	
