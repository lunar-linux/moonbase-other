(

  ./configure --build=$BUILD --prefix=/ \
              --mandir=$MODULE_PREFIX/share/man $OPTS &&
  default_make &&
  # these are needed or handy:
  ln -s mkreiserfs /sbin/mkfs.reiserfs &&
  ln -s reiserfsck /sbin/fsck.reiserfs

) > $C_FIFO 2>&1
