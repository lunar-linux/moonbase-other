(

  # we belong in /usr/bin not /usr/local/bin
  sedit "s:PREFIX=/usr/local:PREFIX=/usr:" Makefile &&

  default_make

) > $C_FIFO 2>&1
