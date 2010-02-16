(
  ./configure  \
               --prefix=/usr                      \
               --sysconfdir=/etc                  \
               --localstatedir=/var               \
               --enable-autodetect                &&
  make  &&
  prepare_install &&
  make install

) > $C_FIFO 2>&1 
