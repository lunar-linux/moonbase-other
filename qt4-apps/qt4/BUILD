(

  export QTDIR=$SOURCE_DIRECTORY &&
  export PATH=$QTDIR/bin:$PATH   &&
  export LD_LIBRARY_PATH=$QTDIR/lib &&

  sedit "s:COMMERCIAL_USER=ask:COMMERCIAL_USER=no:" configure &&
  sedit "s/-O2/$CFLAGS/" mkspecs/common/g++.conf &&
  sedit "s/-Wl,-O1/$LDFLAGS/" mkspecs/common/g++.conf &&

  if [ "$MAKE_DOCS" == "y" ]; then
    OPTS+=" -make tools -make docs -make translations"
  fi &&

  if [ "$MAKE_EXAMPLE_DEMOS" == "y" ]; then
    OPTS+=" -make examples -make demos -make tools -make docs -make translations"
  fi &&

  OPTS="-largefile -multimedia -audio-backend -no-separate-debug-info -script -release -scripttools -accessibility -glib -optimized-qmake -xmlpatterns -fast -shared" &&

  echo "yes" | ./configure                             \
               -prefix /usr                            \
               -docdir /usr/share/$MODULE              \
               -plugindir /usr/lib/$MODULE/plugins     \
               -datadir /usr/share/$MODULE             \
               -translationdir /usr/share/$MODULE      \
               -sysconfdir /etc/$MODULE                \
               -examplesdir /usr/share/doc/$MODULE     \
               -demosdir /usr/share/doc/$MODULE        \
               $OPTS                                  &&

  default_make  &&

# It wants to point moc_location and uic_location to ${prefix}/src/qt-everywhere-opensource-src-4.7.0-beta2/bin
# and after much fiddling cannot get it to point them to /usr/bin. So lets jsut sedit these rascals.
  for i in `ls /usr/lib/pkgconfig/Q*.pc` ; do sed -i "s:\${prefix}/src/qt-everywhere-opensource-src-$VERSION/:\${prefix}/:" $i ; done &&
  sed -i "s:\${prefix}/src/qt-everywhere-opensource-src-$VERSION/:\${prefix}/:"  /usr/lib/pkgconfig/phonon.pc &&

  if [ "$MAKE_QDOC3" == "y" ]; then
     cd tools/qdoc3 &&
     qmake -o Makefile qdoc3.pro &&

     make    &&
     install -m 755 ../../bin/qdoc3 $MODULE_PREFIX/bin/ &&
     cd $SOURCE_DIRECTORY
  fi &&

  echo "export QTDIR=\"${MODULE_PREFIX}\"" >> $SOURCE_DIRECTORY/qt4.rc  &&
  echo export PATH=\"'${QTDIR}'/bin:'${PATH}'\" >> $SOURCE_DIRECTORY/qt4.rc  &&
  echo export XDG_DATA_DIRS=\"/usr/share:'${QTDIR}'/share\" >> $SOURCE_DIRECTORY/qt4.rc &&
  echo export PKG_CONFIG_PATH=\"'${QTDIR}'/lib/pkgconfig:'${PKG_CONFIG_PATH}'\"  \
        >> $SOURCE_DIRECTORY/qt4.rc  &&

  install -m644 $SOURCE_DIRECTORY/qt4.rc /etc/profile.d/

) > $C_FIFO 2>&1
