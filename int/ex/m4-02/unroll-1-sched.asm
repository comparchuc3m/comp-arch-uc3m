loop: fld     ft0,  0(t1)
      fld     ft1,  0(t2)
      addi    t1,   t1,    8
      addi    t2,   t2,    8
      fadd.d  ft2,  ft0,   ft1
      addi    t3,   t3,    8
      <stall> x 2
      fsd     ft2,  -8(t3)
      bne     t1,   t4,    loop
