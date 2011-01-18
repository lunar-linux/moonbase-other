(

  sedit "s:^banner=.*:banner=no:" colordiffrc &&
  sedit "s:xmlto:xmlto --skip-validation:" Makefile &&
  sedit "s:/usr/local:/usr:" Makefile &&

  default_build

) > $C_FIFO 2>&1
