(

  patch_it $SOURCE_CACHE/$SOURCE2 1      &&
  ./configure  --build=$BUILD             \
               --prefix=/usr              \
               --mandir=/usr/share/man    \
	       --infodir=/usr/share/info  \
               --bindir=/bin             &&
  default_make                           &&
  rm  -f         /bin/awk                &&
  ln  -sf  gawk  /bin/awk                &&
  if [ -e /bin/gawk-*  ]; then
    rm /bin/gawk-*;
  fi                                     &&
  if [ -e /bin/pgawk-* ]; then
    rm /bin/pgawk-*;
  fi

) > $C_FIFO 2>&1
