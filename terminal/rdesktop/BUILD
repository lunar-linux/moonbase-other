(

  ./configure  --prefix=/usr  --enable-final \
               $OPTS          &&
  patch -p0 < $SCRIPT_DIRECTORY/rdesktop-fix-makefile.patch &&
  make                        &&
  prepare_install             &&
  make    PREFIX=/usr install

) > $C_FIFO 2>&1
