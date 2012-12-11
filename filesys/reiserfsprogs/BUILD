(

  rm -f /sbin/*.reiserfs  &&

  ./configure --build=$BUILD --prefix=/ \
              --mandir=$MODULE_PREFIX/share/man \
              $OPTS  &&
  default_make

) > $C_FIFO 2>&1
