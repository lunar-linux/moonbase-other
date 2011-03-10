(

  sedit "s/-O2/$CFLAGS/1" Makefile  &&
  sedit "s:(PREFIX)/man:(PREFIX)/share/man:1" Makefile  &&
  sedit "s:/usr/local:/usr:" Makefile  &&

  default_build

) > $C_FIFO 2>&1
