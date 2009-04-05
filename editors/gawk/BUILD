(

  ./configure  --build=$BUILD             \
               --prefix=/usr              \
               --mandir=/usr/share/man    \
               --infodir=/usr/share/info  \
               --bindir=/bin              \
	       ac_cv_func_working_mktime=yes  &&

  default_make             &&
  rm  -f         /bin/awk  &&
  ln  -sf  gawk  /bin/awk  &&
  if [ -e /bin/gawk-*  ]; then
    rm /bin/gawk-*;
  fi  &&
  if [ -e /bin/pgawk-* ]; then
    rm /bin/pgawk-*;
  fi

) > $C_FIFO 2>&1
