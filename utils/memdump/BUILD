(
  cd $SOURCE_DIRECTORY &&
  sedit "s/CFLAGS\t=/CFLAGS\t= $CFLAGS -I. \$(XFLAGS) \$(DEFS)/" Makefile &&
  make &&
  prepare_install &&
  mv memdump $MODULE_PREFIX/bin &&
  mv memdump.1 $MODULE_PREFIX/share/man/man1
) > $C_FIFO 2>&1
