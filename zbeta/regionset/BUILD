(

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  make &&
  gzip regionset.8 &&
  prepare_install &&
  mkdir -p /usr/sbin /usr/share/doc/regionset /usr/share/man/man8 &&
  cp -a regionset /usr/sbin/ &&
  cp ChangeLog README /usr/share/doc/regionset/ &&
  cp regionset.8.gz /usr/share/man/man8/

) > $C_FIFO 2>&1
