unset CXX
(

  ./configure --prefix=/usr               \
              --with-initdir=/etc/init.d  \
              --mandir=/usr/share/man     \
              $OPTS                      &&
              
  default_make

) > $C_FIFO 2>&1
