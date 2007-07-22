(

  default_config  &&

  sedit '/partimag\.root/d' Makefile.{in,am}   &&
  sedit "s|partimag:root|disk:root|g" Makefile &&

  default_make

) > $C_FIFO 2>&1
