(

  cd unix                              &&
  ./configure  --prefix=/usr           \
               --mandir=/usr/share/man &&
  make                                 &&
  prepare_install                      &&
  make install                         &&
  ln -sf tclsh8.4 /usr/bin/tclsh    

) > $C_FIFO 2>&1
