(

  bad_flags -malign-double -s

  export CFLAGS="$CFLAGS -static"    &&
  export LDFLAGS="$LDFLAGS -static"  &&

  # this sedit restores the tar --list to its older 1.15.1 format
  sedit "s/tartime (st->mtime, false)/tartime (st->mtime, true)/" src/list.c  &&
  ./configure  --build=$BUILD             \
               --prefix=/usr              \
               --libexecdir=/bin          \
               --infodir=/usr/share/info  \
               --disable-nls              \
               --bindir=/bin             &&
  make                                   &&
  prepare_install                        &&
  cp  src/tar        /bin/tar-static     &&
  cp  rmt/rmt        /bin/rmt-static

) > $C_FIFO 2>&1
