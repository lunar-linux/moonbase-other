(

  ./configure --build=$BUILD --prefix=/ \
              --mandir=$MODULE_PREFIX/share/man $OPTS &&
  default_make &&
  # these are needed or handy:
  ln -sf mkreiserfs /sbin/mkfs.reiserfs &&
  ln -sf reiserfsck /sbin/fsck.reiserfs

) > $C_FIFO 2>&1
