(

  cp  -f /bin/gawk /bin/gawk.old  &&
  prepare_install                 &&
  mv /bin/gawk.old /bin/gawk      &&
  ln  -sf  /bin/gawk  /bin/awk    &&

  ./configure  --build=$BUILD             \
               --prefix=/usr              \
               --mandir=/usr/share/man    \
               --infodir=/usr/share/info  \
               --bindir=/bin              \
               ac_cv_func_working_mktime=yes  &&

  make          &&
  make install  &&

  ln  -sf  /bin/gawk  /bin/awk  &&
  if [ -e /bin/gawk-*  ]; then
    rm /bin/gawk-*;
  fi  &&
  if [ -e /bin/pgawk-* ]; then
    rm /bin/pgawk-*;
  fi

) > $C_FIFO 2>&1
