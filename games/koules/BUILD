(

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  xmkmf -a                          &&
  sedit "s:= man:= 6:" Makefile     &&
  sedit "s:= _man:= _6:" Makefile   &&
  default_make

) > $C_FIFO 2>&1
