(
  
  unset CPP &&
  
  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 1 &&
  patch_it $SOURCE4 1 &&

  ./configure  --prefix=/usr             \
               --mandir=/usr/share/man  && 
  default_make
  
) > $C_FIFO 2>&1
