(
  export  PATH=${QT_PREFIX:-$QTDIR}/bin:$PATH
  export  LD_LIBRARY_PATH=${QT_PREFIX:-$QTDIR}/lib
  export  KDE_PREFIX=${KDE_PREFIX:-/opt/lunar/kde/3}
 
  ./configure  --prefix=${KDE_PREFIX:-$KDEDIR}     \
               --with-qt-dir=${QT_PREFIX:-$QTDIR}  \
               --enable-final                      \
               --disable-debug                     \
               --with-xinerama                     \
               $OPTS                              &&

  default_make

  if ! grep -q "${KDE_PREFIX}/lib" /etc/ld.so.conf; then
    echo "${KDE_PREFIX}/lib" >> /etc/ld.so.conf  
  fi 

  if ! grep -q "${KDE_PREFIX}/lib/kde3" /etc/ld.so.conf; then
    echo "${KDE_PREFIX}/lib/kde3" >> /etc/ld.so.conf
  fi

  mkdir -p ${KDE_PREFIX:-$KDEDIR}/lib/pkgconfig

  echo "export KDEDIR=$KDE_PREFIX" > /etc/profile.d/kde3.rc
  echo "export PATH=\$KDEDIR/bin:\$PATH" >> /etc/profile.d/kde3.rc
  echo "export PKG_CONFIG_PATH=$KDEDIR/lib:\$PKG_CONFIG_PATH" >> /etc/profile.d/kde3.rc

) > $C_FIFO 2>&1
