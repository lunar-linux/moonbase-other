(

  mkdir  -p  /var/lib/lynx

  ./configure   --host=$BUILD                        \
                --prefix=/usr                        \
                --libdir=/var/lib/lynx               \
                --sysconfdir=/etc                    \
                --enable-gzip-help                   \
                --mandir=/usr/share/man              \
                $OPTS                                &&
  make                                               &&
  prepare_install                                    &&
  make    install                                    &&
  make    install-help                               &&
  make    install-doc                                &&
  ln    -sf  ../var/lib/lynx/lynx.cfg /etc/lynx.cfg  &&
  rm    -f  /usr/bin/lynx.old

) > $C_FIFO 2>&1
