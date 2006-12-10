(

  cp $SOURCE_CACHE/$SOURCE2 tar.1.gz  &&  
  # this sedit restores the tar --list to its older 1.15.1 format
  sedit "s/tartime (st->mtime, false)/tartime (st->mtime, true)/" src/list.c  &&
  ./configure  --build=$BUILD     \
               --prefix=/usr      \
               --libexecdir=/bin  \
               --bindir=/bin      \
               --infodir=/usr/share/info \
               $OPTS &&
  default_make
  install -c -m644 tar.1.gz /usr/share/man/man1

) > $C_FIFO 2>&1
