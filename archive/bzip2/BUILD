(

  if [ "$ENABLE_LARGEFILE" == "y" ]; then
    CFLAGS+=" \$(BIGFILES)"
  fi

  sedit "s/^CFLAGS=.*$/CFLAGS=$CFLAGS -fPIC/"        Makefile  &&
  sedit "s/ln/ln -f/"                                Makefile  &&
  sedit "s/\$(PREFIX)\/man/\$(PREFIX)\/share\/man/g" Makefile  &&

  # Makefile hack to not install static lib
  sedit "s/all: libbz2.a/all:/g"                 Makefile  &&
  sedit "s/bzip2: libbz2.a/bzip2:/g"             Makefile  &&
  sedit "/cp -f libbz2.a/d"                      Makefile  &&
  sedit "/chmod a+r \$(PREFIX)\/lib\/libbz2.a/d" Makefile  &&

  # build shared lib first so the app part will
  # not complain about the missing static lib
  make  -f  Makefile-libbz2_so  PREFIX=/usr  &&
  make                          PREFIX=/usr  &&

  prepare_install  &&
  make  PREFIX=/usr install  &&

  # shared libs have to be installed separately
  install -m755 libbz2.so.1.0.6 /usr/lib/libbz2.so.1.0.6 &&
  ln -sf /usr/lib/libbz2.so.1.0.6 /usr/lib/libbz2.so.1.0 &&
  ln -sf /usr/lib/libbz2.so.1.0 /usr/lib/libbz2.so.1 &&
  ln -sf /usr/lib/libbz2.so.1 /usr/lib/libbz2.so &&

  strip /usr/bin/bzip2 /usr/bin/bzip2recover /usr/bin/bzcat /usr/bin/bunzip2

) > $C_FIFO 2>&1
