(
  export  PATH=${QT_PREFIX:-$QTDIR}/bin:$PATH
  export  LD_LIBRARY_PATH=${QT_PREFIX:-$QTDIR}/lib
  export  KDE_PREFIX=${KDE_PREFIX:-/opt/lunar/kde/3}
 
  ./configure  --prefix=${KDE_PREFIX:-$KDEDIR}      \
               --with-qt-dir=${QT_PREFIX:-$QTDIR}   \
               --enable-final                       \
               --disable-debug                      \
               --with-xinerama                      \
               $OPTS                               &&

  default_make

  if ! grep -q "${KDE_PREFIX:-$KDEDIR}/lib" /etc/ld.so.conf; then
    echo "${KDE_PREFIX:-$KDEDIR}/lib" >> /etc/ld.so.conf  
  fi 

  if ! grep -q "${KDE_PREFIX:-$KDEDIR}/lib/kde3" /etc/ld.so.conf; then
    echo "${KDE_PREFIX:-$KDEDIR}/lib/kde3" >> /etc/ld.so.conf
  fi

) > $C_FIFO 2>&1
