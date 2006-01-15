(

  sedit "s/\/man\/man1/\/share\/man\/man1/g" Makefile.in &&
  default_build

  # Lets be naughty and do the coverup
  ln -sf /usr/lib/libexpat.so /usr/lib/libexpat.so.0 

) > $C_FIFO 2>&1
