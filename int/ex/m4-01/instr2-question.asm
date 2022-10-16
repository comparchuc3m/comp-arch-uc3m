 loop: lw t4, 0(t1)        // I1
      lw t5, 0(t2)         // I2
      mul t5, t4, t5       // I3
      sw t5, 0(t3)         // I4
      addi t1, t1, 4       // I5
      addi t2, t2, 4       // I6
      addi t3, t3, 4       // I7
      bne t3, zero, loop   // I8
