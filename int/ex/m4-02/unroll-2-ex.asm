loop: fld     ft0,  (t1)       // I1
      fld     ft1,  (t2)       // I2
      fadd.d  ft2,  ft0,  ft1  // I3
      fmul.d  ft2,  ft2,  ft3  // I4
      fsd     ft2,  (t3)       // I5
      addi    t1,   t1,   8    // I6
      addi    t2,   t2,   8    // I7
      subi    t4,   t4,   1    // I8
      bne     t4,   zero, loop // I9
      addi    t3,   t3,   8    // I10
