(

 sedit "s/usr\/local\/sbin/usr\/sbin/" conf/Makefile-obj.in
 sedit "s/usr\/local\/info/usr\/share\/info/" conf/Makefile-top.in

  ./configure  --prefix=/usr                          \
               --with-linux=/usr/src/linux-2.4.17     \
               --disable-pkcipe                       \
               --enable-protocol=3                    \
               --infodir=/usr/share/info              \
               --mandir=/usr/share/man                &&
  touch cipe.texinfo
  make                               &&
  prepare_install                    &&
  make install
) > $C_FIFO 2>&1
