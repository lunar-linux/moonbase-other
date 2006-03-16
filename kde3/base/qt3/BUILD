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
               -thread              \
               -qt-gif              \
               -plugin-imgfmt-png   \
               -plugin-imgfmt-jpeg  \
               -plugin-imgfmt-mng   \
               -system-libpng       \
               -system-libjpeg      \
               -system-libmng       \
               -system-zlib         \
               -no-exceptions       \
               -thread              \
               -dlopen-opengl       \
	       -xft		    \
	       -xkb		    \
               -sm		    \
               -tablet              \
               $OPTS                &&

  if [ "$SAMPIN" == "y" ] ; then
    make
  else
    make sub-tools
  fi &&

  rm -f bin/qmake              &&     
  cp qmake/qmake bin/qmake     &&
  make install                 &&

  if [ "$SAMPIN" == "y" ] ; then
    cp -a examples  ${MODULE_PREFIX}/
    cp -a tutorial  ${MODULE_PREFIX}/
  fi &&

  if ! grep -q "${MODULE_PREFIX}/lib" /etc/ld.so.conf; then
    echo "${MODULE_PREFIX}/lib" >> /etc/ld.so.conf
  fi &&

  echo "export QTDIR=\"${MODULE_PREFIX}\"" >> $SOURCE_DIRECTORY/qt3.rc    &&
  echo export PATH=\"'${QTDIR}'/bin:'${PATH}'\" >> $SOURCE_DIRECTORY/qt3.rc &&
  echo export PKG_CONFIG_PATH=\"'${QTDIR}'/lib/pkgconfig:'${PKG_CONFIG_PATH}'\" \
	>> $SOURCE_DIRECTORY/qt3.rc &&

  install -m644 $SOURCE_DIRECTORY/qt3.rc /etc/profile.d/

) > $C_FIFO 2>&1
