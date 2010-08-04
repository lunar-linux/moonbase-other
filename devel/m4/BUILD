(

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  sedit "s/\infodir = \$(prefix)\/info/infodir = \$(prefix)\/share\/info/" Makefile.in  &&
  ./configure  --build=$BUILD  \
               --prefix=/usr   \
               $OPTS          &&

  sedit "s/fix)\/info/fix)\/share\/info/" Makefile  &&

  default_make

) > $C_FIFO 2>&1
