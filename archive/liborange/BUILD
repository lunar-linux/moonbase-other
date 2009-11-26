(

  ./configure  --prefix=/usr     \
               --enable-shared  &&

  make                          &&
  prepare_install               &&

  if [ ! -f /usr/lib/liblzo.so ]; then
    ln -sf /usr/lib/liblzo2.so /usr/lib/liblzo.so
  fi

  make    install

) > $C_FIFO 2>&1
