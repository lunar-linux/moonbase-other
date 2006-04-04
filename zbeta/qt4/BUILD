(
  export  QTDIR=$SOURCE_DIRECTORY
  export  PATH=$QTDIR/bin:$PATH
  export  LD_LIBRARY_PATH=$QTDIR/lib

  prepare_install  &&

  sedit "s/-O2/$CXXFLAGS/" mkspecs/linux-g++/qmake.conf  &&

  echo "yes" | ./configure          \
	       -prefix ${MODULE_PREFIX} \
	       -release             \
	       -fast		    \
               -shared              \
               -qt-gif              \
               -system-libpng       \
               -system-libjpeg      \
               -system-libmng       \
               -system-zlib         \
               -no-exceptions       \
               $OPTS                &&

  make &&

  rm -f bin/qmake              &&     
  cp qmake/qmake bin/qmake     &&
  make install                 &&

  if ! grep -q "${MODULE_PREFIX}/lib" /etc/ld.so.conf; then
    echo "${MODULE_PREFIX}/lib" >> /etc/ld.so.conf
  fi &&

  echo "export QTDIR=\"${MODULE_PREFIX}\"" >> $SOURCE_DIRECTORY/qt4.rc    &&
  echo export PATH=\"'${QTDIR}'/bin:'${PATH}'\" >> $SOURCE_DIRECTORY/qt4.rc &&
  echo export PKG_CONFIG_PATH=\"'${QTDIR}'/lib/pkgconfig:'${PKG_CONFIG_PATH}'\" \
	>> $SOURCE_DIRECTORY/qt4.rc &&

  install -m644 $SOURCE_DIRECTORY/qt4.rc /etc/profile.d/

) > $C_FIFO 2>&1
