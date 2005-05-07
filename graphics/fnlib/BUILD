(
  export CC="gcc"                       &&
  ./configure --build=$BUILD            \
              --host=i686-pc-linux-gnu  \
              --prefix=/usr             \
              --sysconfdir=/etc         \
              --infodir=/usr/share/info \
              --mandir=/usr/share/man   \
              --localstatedir=/var      &&

  default_config                        &&
  default_make

) > $C_FIFO 2>&1
