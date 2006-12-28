(

  export CFLAGS="$CFLAGS -fPIC"

  cd build/generic

  ./configure  --prefix=/usr              \
               --infodir=/usr/share/info  \
               --mandir=/usr/share/man    \
               $OPTS                     &&

  default_make

) > $C_FIFO 2>&1
