(

  cp $SOURCE_CACHE/$SOURCE2 tar.1.gz &&

  ./configure  --build=$BUILD     \
               --prefix=/usr      \
               --libexecdir=/bin  \
               --infodir=/usr/share/info \
               --bindir=/bin      &&
  make                            &&
  prepare_install                 &&
  cp  src/tar        /bin         &&
  cp  rmt/rmt        /bin         &&
  cp  doc/tar.info*  /usr/share/info    &&
  install-info  --info-dir=/usr/share/info  /usr/share/info/tar.info &&
  install -c -m644 tar.1.gz /usr/share/man/man1

) > $C_FIFO 2>&1
