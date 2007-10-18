(

  ./configure --prefix=/                 \
              --datadir=/lib             \
              --includedir=/usr/include  \
              --infodir=/usr/share/doc   \
              --mandir=/usr/share/man    \
              --with-default-dict=/lib/cracklib/pw_dict \
              --disable-static \
              $OPTS  &&
  default_make       &&
  make dict

) > $C_FIFO 2>&1
