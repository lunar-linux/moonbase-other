(

  bad_flags ALL &&
  make configure &&
  make &&
  prepare_install &&
  ld --whole-archive -share -o lib/libode.so lib/libode.a &&
  ld --whole-archive -share -o lib/libdrawstuff.so lib/libdrawstuff.a &&
  install -m644 lib/libode.a /usr/lib/ &&
  install -m755 lib/libode.so /usr/lib/ &&
  install -m644 lib/libdrawstuff.a /usr/lib/ &&
  install -m755 lib/libdrawstuff.so /usr/lib/

) > $C_FIFO 2>&1
