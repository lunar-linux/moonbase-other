(

  sedit "s:\/usr\/X11R6:\/usr:g" Makefile &&
  sedit "s:\$(root)\$(prefix)\/lib\/mozilla\/plugins:\/opt\/lunar\/plugins:g" Makefile &&

  make linux &&
  prepare_install &&
  make install

) > $C_FIFO 2>&1
