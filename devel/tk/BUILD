(

 (
  cd tcl$VERSION/unix                   &&
  ./configure --prefix=/usr             \
              --mandir=/usr/share/man
 ) &&

  cd unix                               &&
  ./configure --prefix=/usr             \
              --mandir=/usr/share/man   \
        --with-tcl=../tcl$VERSION/unix  &&
  make                                  &&
  prepare_install                       &&
  make install                          &&
  ln -sf wish8.4 /usr/bin/wish

) > $C_FIFO 2>&1
