(

  patch  -p1  <  $SCRIPT_DIRECTORY/tar-1.13.bzip2.patch

  ./configure  --build=$BUILD     \
               --prefix=/usr      \
               --libexecdir=/bin  \
	       --infodir=/usr/share/info \
               --bindir=/bin      &&
  make                            &&
  prepare_install                 &&
  cp  src/tar        /bin         &&
  cp  doc/tar.info*  /usr/share/info    &&
  install-info  --info-dir=/usr/share/info  /usr/share/info/tar.info

) > $C_FIFO 2>&1
