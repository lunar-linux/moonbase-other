(

  ./config  --prefix=/usr                       \
            --openssldir=/etc/ssl               \
            shared                              &&
  sedit "/^CC/d" Makefile                       &&
  sedit "s/-m486//g" Makefile                   &&
  sedit "s/^CFLAG=/CFLAG=$CFLAGS /g" Makefile   &&
  make                                          &&
  prepare_install                               &&
  make  MANDIR=/usr/share/man  install

) > $C_FIFO 2>&1
