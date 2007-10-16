(

  ./configure --prefix=/                 \
              --datadir=/lib             \
              --includedir=/usr/include  \
              --infodir=/usr/share/doc   \
              --mandir=/usr/share/man    \
              $OPTS  &&
  default_make       &&
  make dict          &&
  cd /lib/cracklib   &&
  ln -sf pw_dict.hwm .hwm &&
  ln -sf pw_dict.pwd .pwd &&
  ln -sf pw_dict.pwi .pwi

) > $C_FIFO 2>&1
