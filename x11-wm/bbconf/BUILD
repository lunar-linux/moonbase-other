(

  ./configure  --prefix=/usr                      \
               --sysconfdir=/etc                  \
               --localstatedir=/var               \
               --disable-debug                    \
               --with-qt-dir=/opt/lunar/qt/3      \
               $OPTS     &&
  make                   &&
  prepare_install        &&
  make    install

) > $C_FIFO 2>&1
