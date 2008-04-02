(

  . /etc/profile.d/kde3.rc
  . /etc/profile.d/qt3.rc

  ./configure  --prefix=${KDE_PREFIX:-$KDEDIR}     \
               --with-qt-dir=${QT_PREFIX:-$QTDIR}  \
               --disable-debug                     \
               --enable-final                      \
               $OPTS                              &&

  default_make
 
) > $C_FIFO 2>&1
