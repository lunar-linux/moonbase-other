(

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  sedit "s/-O2/$CFLAGS/" Makefile  &&
  sedit "s/ln/ln -f/" Makefile     &&
  sedit "s/\$(PREFIX)\/man/\$(PREFIX)\/share\/man/g" Makefile  &&

  make  PREFIX=/usr             &&
  prepare_install               &&
  make  PREFIX=/usr install     &&
  make  -f  Makefile-libbz2_so  &&
  ( cp    -a  libbz2.so* /usr/lib || true )

) > $C_FIFO 2>&1
