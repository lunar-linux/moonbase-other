(
  sedit "s:/usr/local/bin:/usr/bin:g" Makefile &&
  default_make                                 &&
  #install examples :-)
  mkdir -p /usr/share/doc/usb_pickit/examples/ &&
  cp -r example /usr/share/doc/usb_pickit/examples/
) > $C_FIFO 2>&1
