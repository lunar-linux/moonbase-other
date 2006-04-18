(

  patch_it $SOURCE_CACHE/$SOURCE3 1   &&
  cp $SOURCE_CACHE/$SOURCE2 tar.1.gz  &&

  ./configure  --build=$BUILD     \
               --prefix=/usr      \
               --libexecdir=/bin  \
               --bindir=/bin      \
               --infodir=/usr/share/info  &&
  make             &&
  prepare_install  &&
  cp src/tar /bin  &&
  cp rmt/rmt /bin  &&
  install -c -m644 tar.1.gz /usr/share/man/man1  &&

  if module_installed texinfo ; then
    cp doc/tar.info* /usr/share/info  &&
    install-info --info-dir=/usr/share/info /usr/share/info/tar.info 
  fi

) > $C_FIFO 2>&1
