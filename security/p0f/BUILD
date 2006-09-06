(

  default_make     &&
  gzip -9 p0f.1	   &&
  prepare_install  &&
  mkdir -p /etc/p0f

  install --mode=644 p0f.1.gz /usr/man/man1/
  install --mode=644 *.fp /etc/p0f/
  install --mode=755 p0f /usr/bin/
  install --mode=755 p0frep /usr/bin/

) > $C_FIFO 2>&1

