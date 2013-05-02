(

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&
  patch_it $SOURCE_CACHE/$SOURCE3 1  &&
  sedit "/pixbuf/,/^)/d" poppler.defs      &&

  default_build

) > $C_FIFO 2>&1
