(


  patch_it $SOURCE_CACHE/$SOURCE3 1  &&

  export CFLAGS="$CFLAGS -static"    &&
  export LDFLAGS="$LDFLAGS -static"  &&

  ./configure  --build=$BUILD             \
               --prefix=/usr              \
               --libexecdir=/bin          \
               --infodir=/usr/share/info  \
               --bindir=/bin             &&
  make                                   &&
  prepare_install                        &&
  cp  src/tar        /bin/tar_static     &&
  cp  rmt/rmt        /bin/rmt_static

) > $C_FIFO 2>&1
