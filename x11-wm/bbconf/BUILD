(

  ./configure  --prefix=/usr                      \
               --sysconfdir=/etc                  \
               --localstatedir=/var               \
               --disable-debug                    \
               --with-qt-dir=${QT_PREFIX:-$QTDIR}      \
               $OPTS     &&
  make                   &&
  prepare_install        &&
  make    install

) > $C_FIFO 2>&1
