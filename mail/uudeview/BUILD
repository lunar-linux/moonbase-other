(

  default_build &&
  install -m644 uulib/uudeview.h uulib/uustring.h /usr/include &&
  install -m755 uulib/libuu.a /usr/lib &&

  ln -sf /usr/bin/uuenview /usr/bin/uuencode &&
  ln -sf /usr/bin/uudeview /usr/bin/uudecode

) > $C_FIFO 2>&1
