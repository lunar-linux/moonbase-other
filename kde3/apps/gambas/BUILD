(

  . /etc/profile.d/qt3.rc
  . /etc/profile.d/kde3.rc

  ./configure  --prefix=${KDE_PREFIX:-$KDEDIR}                  \
               --with-qt-includes=${QT_PREFIX:-$QTDIR}/include  \
               --with-qt-libraries=${QT_PREFIX:-$QTDIR}/lib     \
               --disable-debug              \
	       --enable-final               \
               --enable-fast-malloc=full    \
               --with-xinerama              \
               $OPTS                       &&

  default_make
 
) > $C_FIFO 2>&1
