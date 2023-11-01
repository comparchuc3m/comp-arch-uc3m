loop: fld     ft0,  0(t1)
      fld     ft1,  0(t2)
      fld     ft4,  8(t1)
      fld     ft5,  8(t2)
      fadd.d  ft2,  ft0,   ft1
      addi    t1,   t1,    16
      fadd.d  ft6,  ft4,   ft5
      addi    t2,   t2,    16
      subi    t4,   t4,    2
      fmul.d  ft2,  ft2,   ft3
      <stall> x 1
      fmul.d  ft6,  ft6,   ft3
      <stall> x 4
      fsd     ft2,  0(t3)
      <stall> x 1
      fsd     ft6,  8(t3)
      bne     t4,   zero,  loop
      addi    t3,   t3,    16
