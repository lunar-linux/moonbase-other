(
  cd  epplets                        &&
  ./autogen.sh --prefix=/usr         \
               --enable-fsstd        \
               --sysconfdir=/etc     \
               --localstatedir=/var  &&
  make                               &&
  prepare_install                    &&
  make    install

) > $C_FIFO 2>&1
