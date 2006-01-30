(

  # make sure the luser has the source for this one!
  download_module wget &&

  ./config  --prefix=/usr                        \
            --openssldir=/etc/ssl                \
            shared                              &&
  sedit "/^CC/d" Makefile                       &&
  sedit "s/-m486//g" Makefile                   &&
  sedit "s/^CFLAG=/CFLAG=$CFLAGS /g" Makefile   &&
  make                                          &&
  prepare_install                               &&
  make MANDIR=/usr/share/man install            &&
  cp $SOURCE_CACHE/$SOURCE2 /etc/ssl/certs/Makefile

) > $C_FIFO 2>&1
