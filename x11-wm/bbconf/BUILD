(

  ./configure  --prefix=/usr                      \
               --sysconfdir=/etc                  \
               --localstatedir=/var               \
               --disable-debug                    \
               --with-qt-dir=/opt/lunar/qt/2      \
               $OPTS     &&
  make                   &&
  prepare_install        &&
  make    install

) > $C_FIFO 2>&1
