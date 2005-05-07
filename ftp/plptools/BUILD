unset CXX
(

  ./configure --prefix=/usr --with-initdir=/etc/init.d $OPTS    \
         --mandir=/usr/share/man                                &&
  make                                                          &&
  prepare_install                                               &&
  make install

) > $C_FIFO 2>&1
