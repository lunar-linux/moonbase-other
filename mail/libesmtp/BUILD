(

  ./configure  --prefix=/usr                    \
               --enable-require-all-recipients  \
               --enable-libitdl-install=no      &&
  make                                          &&
  prepare_install                               &&
  make    install

) > $C_FIFO 2>&1
