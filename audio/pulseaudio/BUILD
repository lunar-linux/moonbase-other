(

  ./configure  --prefix=/usr            \
               --sysconfdir=/etc        \
               --mandir=/usr/share/man  \
               --enable-static          \
               --localstatedir=/var    &&

  make  &&

  if [ -f /usr/bin/parec ];  then
    rm /usr/bin/parec
  fi

  prepare_install  &&
  make install &&

  add_priv_group pulse &&
  add_priv_user pulse -d /var/run/pulse -g pulse

) > $C_FIFO 2>&1
