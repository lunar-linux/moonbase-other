(

  ./configure    --prefix=/usr                         \
                 --sysconfdir=/etc                     \
                 --localstatedir=/var                  \
                 --with-docdir=/usr/share/doc/libsmb++ \
                 $OPTS                                &&

  sedit  "s:sys/time.h:time.h:"  src/NBHostCache.cpp  &&
  make                 &&
  prepare_install      &&
  make install         

 
) > $C_FIFO 2>&1
