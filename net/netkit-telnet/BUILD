(

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  sedit "s/MANDIR=\"\$PREFIX\/man/MANDIR=\"\$PREFIX\/share\/man/" configure  &&

  ./configure  --prefix=/usr  &&
  default_make

) > $C_FIFO 2>&1
