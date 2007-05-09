(

  sedit '/partimag\.root/d' Makefile.{in,am}   &&
  sedit "s|partimag:root|disk:root|g" Makefile &&

  default_build

) > $C_FIFO 2>&1
