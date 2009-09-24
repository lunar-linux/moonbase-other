(

  ./configure --prefix=/usr              \
              --sysconfdir=/etc          \
              --localstatedir=/var       \
              --infodir=/usr/share/info  \
              --mandir=/usr/share/man    \
              $OPTS  &&
  make &&
  prepare_install &&
  strip _build_/default/midori/midori &&
  strip _build_/default/extensions/*.so &&
  make install

) > $C_FIFO 2>&1
