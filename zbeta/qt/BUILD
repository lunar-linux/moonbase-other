(
  export  YACC=byacc
  export  QT_PREFIX=${QT_PREFIX:-/opt/lunar/qt}
  export  QTDIR=$SOURCE_DIRECTORY
  export  PATH=$QTDIR/bin:$PATH
  export  LD_LIBRARY_PATH=$QTDIR/lib

  prepare_install  &&

  sedit "s/-O2/$CXXFLAGS/" mkspecs/linux-g++/qmake.conf  &&

  echo  "yes"  |  ./configure  -release                      \
                               -shared                       \
                               -thread                       \
                               -qt-gif                       \
                               -plugin-imgfmt-mng            \
                               -system-libpng                \
                               -system-libjpeg               \
                               -system-zlib                  \
                               -no-g++-exceptions            \
                               -thread                       \
                               -dlopen-opengl                \
                               -prefix ${QT_PREFIX:-$QTDIR}  \
                               -xft                          \
                               $OPTS                        &&

  case $SAMPCOMP in
    y|Y|j|J)
      make
      ;;
    *)
      make symlinks sub-src sub-tools
      ;;
  esac  &&

  rm bin/qmake              &&     
  cp qmake/qmake bin/qmake  &&
  make install              &&

  case $SAMPIN in
    y|Y|j|J)
      mv examples  ${QT_PREFIX:-$QTDIR}  &&
      mv tutorial  ${QT_PREFIX:-$QTDIR}
      ;;
  esac  &&

  if ! grep -q "${QT_PREFIX:-$QTDIR}/lib" /etc/ld.so.conf; then
    echo "${QT_PREFIX:-$QTDIR}/lib" >> /etc/ld.so.conf
  fi

  echo "export QTDIR=$QT_PREFIX" > /etc/profile.d/qt.rc
  echo "export PATH=\$QTDIR/bin:\$PATH" >> /etc/profile.d/qt.rc
  echo "export PKG_CONFIG_PATH=$QT_PREFIX/lib/pkgconfig:\$PKG_CONFIG_PATH" \
                 >> /etc/profile.d/qt.rc

) > $C_FIFO 2>&1
