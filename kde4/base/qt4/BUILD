(

  export QTDIR=$SOURCE_DIRECTORY
  export PATH=$QTDIR/bin:$PATH
  export LD_LIBRARY_PATH=$QTDIR/lib

  sedit "s/-O2/$CXXFLAGS/" mkspecs/linux-g++/qmake.conf  &&

  if in_depends qt4 sqlite ; then
    OPTS+=" -system-sqlite"
  fi

  echo "yes" | ./configure               \
               -prefix ${MODULE_PREFIX}  \
               -release          \
               -fast             \
               -no-separate-debug-info \
               -shared           \
               -qt-gif           \
               -system-libpng    \
               -system-libjpeg   \
               -system-libmng    \
               -system-zlib      \
               -no-exceptions    \
               -nomake examples  \
               -nomake demos     \
               -accessibility    \
               -stl              \
               -webkit           \
               -fontconfig       \
               -qt3support       \
               $OPTS            &&

  default_make  &&

  echo "export QTDIR=\"${MODULE_PREFIX}\"" >> $SOURCE_DIRECTORY/qt4.rc  &&
  echo export PATH=\"'${QTDIR}'/bin:'${PATH}'\" >> $SOURCE_DIRECTORY/qt4.rc  &&
  echo export PKG_CONFIG_PATH=\"'${QTDIR}'/lib/pkgconfig:'${PKG_CONFIG_PATH}'\"  \
        >> $SOURCE_DIRECTORY/qt4.rc  &&

  install -m644 $SOURCE_DIRECTORY/qt4.rc /etc/profile.d/

) > $C_FIFO 2>&1
