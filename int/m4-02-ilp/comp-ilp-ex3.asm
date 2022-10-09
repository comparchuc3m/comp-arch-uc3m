loop:	fld f0, 0(x1)		// f0 <- x[i]
	fadd.d f4, f0, f2	// f4 <- f0 + s
	fsd f4, 0(x1)		// x[i] <- f4
	addi x1, x1, -8		// - -i
	bne x1, x2, loop	// x1!=x2 => loop
