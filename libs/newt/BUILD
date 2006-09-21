(
  
  unset CPP &&
  
  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 1 &&
  patch_it $SOURCE4 1 &&
  #fix the hard-coded python2.4 to python2.5 for now, remove this hack later when newt is fixed.
  sedit "s/python2.4/python2.5/g" Makefile.in &&

  ./configure  --prefix=/usr             \
               --mandir=/usr/share/man  && 
  default_make
  
) > $C_FIFO 2>&1
