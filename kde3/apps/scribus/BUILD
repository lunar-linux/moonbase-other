(

  . /etc/profile.d/qt3.rc

  ./configure  --prefix=${QT_PREFIX:-$QTDIR}  \
               --disable-debug                \
               --without-python               \
               $OPTS                         &&

  default_make

) > $C_FIFO 2>&1
