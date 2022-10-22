loop: fld     ft0,  (t1)
      fld     ft1,  (t2)
      addi    t1,   t1,    8
      addi    t2,   t2,    8
      fadd.d  ft2,  ft0,   ft1
      subi    t4,   t4,    1
      <stall> x 3
      fmul.d  ft2,  ft2,   ft3
      <stall> x 6
      fsd     ft2,  (t3)
      bne     t4,   zero,  loop
      addi    t3,   t3,    8
