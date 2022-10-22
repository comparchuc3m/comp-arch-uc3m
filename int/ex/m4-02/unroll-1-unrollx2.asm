loop: fld     ft0,  0(t1)
      fld     ft1,  0(t2)
      <stall> x 2
      fadd.d  ft2,  ft0,   ft1
      <stall> x 3
      fsd     ft2,  0(t3)

      fld     ft3,  8(t1)
      fld     ft4,  8(t2)
      <stall> x 2
      fadd.d  ft5,  ft3,   ft4
      <stall> x 3
      fsd     ft5,  8(t3)

      addi    t1,   t1,    16
      addi    t2,   t2,    16
      addi    t3,   t3,    16
      bne     t1,   t4,    loop
