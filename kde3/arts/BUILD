(
  unset CC CCC CXX

  export  PATH=/opt/lunar/qt/3/bin:$PATH
  export  LD_LIBRARY_PATH=/opt/lunar/qt/3/lib

  ./configure    --prefix=/opt/lunar/kde/3             \
                 --enable-final                        \
                 --disable-debug                       \
                 --with-qt-dir=/opt/lunar/qt/3         \
                 $OPTS                                &&

  make              &&
  prepare_install   &&
  make install      &&

  if ! grep -q "/opt/lunar/kde/3/lib" /etc/ld.so.conf; then
    echo "/opt/lunar/kde/3/lib" >> /etc/ld.so.conf  
  fi 

  if ! grep -q "/opt/lunar/kde/3/lib/kde3" /etc/ld.so.conf; then
    echo "/opt/lunar/kde/3/lib/kde3" >> /etc/ld.so.conf
  fi

  if ! grep -q 'export  PATH=/opt/lunar/kde/3/bin:$PATH'  /etc/profile; then
    echo "export  PATH=/opt/lunar/kde/3/bin:\$PATH" >> /etc/profile
  fi

) > $C_FIFO 2>&1
