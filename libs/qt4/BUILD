(

  export QTDIR=$SOURCE_DIRECTORY
  export PATH=$QTDIR/bin:$PATH
  export LD_LIBRARY_PATH=$QTDIR/lib

  sedit "s/-O2/$CXXFLAGS/" mkspecs/linux-g++/qmake.conf  &&

  case  $QT3_SUPPORT  in
    y|Y)  OPTS="$OPTS -qt3support"     ;;
    n|N)  OPTS="$OPTS -no-qt3support"  ;;
  esac &&

  echo "yes" | ./configure               \
               -prefix ${MODULE_PREFIX}  \
               -release          \
               -fast             \
               -shared           \
               -qt-gif           \
               -system-libpng    \
               -system-libjpeg   \
               -system-libmng    \
               -system-zlib      \
               -no-exceptions    \
               -nomake examples  \
               -nomake demos     \
               $OPTS            &&

  default_make  &&

  if ! grep -q "${MODULE_PREFIX}/lib" /etc/ld.so.conf; then
    echo "${MODULE_PREFIX}/lib" >> /etc/ld.so.conf
  fi  &&

  echo "export QTDIR=\"${MODULE_PREFIX}\"" >> $SOURCE_DIRECTORY/qt4.rc  &&
  echo export PATH=\"'${QTDIR}'/bin:'${PATH}'\" >> $SOURCE_DIRECTORY/qt4.rc  &&
  echo export PKG_CONFIG_PATH=\"'${QTDIR}'/lib/pkgconfig:'${PKG_CONFIG_PATH}'\"  \
        >> $SOURCE_DIRECTORY/qt4.rc  &&

  install -m644 $SOURCE_DIRECTORY/qt4.rc /etc/profile.d/

) > $C_FIFO 2>&1
