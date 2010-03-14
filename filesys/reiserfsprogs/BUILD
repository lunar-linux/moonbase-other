(

  ./configure --build=$BUILD --prefix=/ \
              --mandir=$MODULE_PREFIX/share/man \
              $OPTS  &&
  default_make &&
  ln -s reiserfsck /sbin/fsck.reiserfs &&
  ln -s mkreiserfs /sbin/mkfs.reiserfs

) > $C_FIFO 2>&1
