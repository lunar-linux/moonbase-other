(
  ./configure --prefix=/usr                     \
              --exec-prefix=/etc                \
              --sysconfdir=/etc                 \
              --with-plugin=/usr/lib/mix/plugin \
              --with-x                          &&
  make                                          &&
  prepare_install                               &&
  make    install

) > $C_FIFO 2>&1
