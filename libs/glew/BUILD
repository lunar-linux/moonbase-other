(

  # Libs should be executable
  sedit "s:0644 lib/\$(LIB.SHARED):0755 lib/\$(LIB.SHARED):1" Makefile &&

  default_make

) > $C_FIFO 2>&1
