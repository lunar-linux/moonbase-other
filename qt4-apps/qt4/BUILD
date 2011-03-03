(

  if [ -d /opt/lunar/qt ] ; then
    ld_remove /opt/lunar/qt/lib
  fi &&

  if [ -d /usr/lib/qt4 ] ; then
    ld_remove /usr/lib/qt4
  fi &&

  export QTDIR=$SOURCE_DIRECTORY &&
  export PATH=$MODULE_PREFIX::$PATH  &&
  export LD_LIBRARY_PATH=$QTDIR/lib &&

  if [ $LICENSE_TYPE == "y" ] ; then
    LICENSE_TYPE="-opensource"
   else
    LICENSE_TYPE="-commercial"
  fi &&

  sedit "s/-O2/$CFLAGS/" mkspecs/common/g++.conf &&

  if [ "$MAKE_DOCS" == "y" ]; then
    OPTS+=" -make tools -make docs -make translations"
  fi &&

  if [ "$MAKE_EXAMPLE_DEMOS" == "y" ]; then
    OPTS+=" -make examples -make demos -make tools -make docs -make translations"
  fi &&

  OPTS+=" -largefile -multimedia -audio-backend -no-separate-debug-info -script -release -scripttools -accessibility -glib -optimized-qmake -xmlpatterns -fast -shared" &&

  ./configure  -confirm-license $LICENSE_TYPE          \
               -prefix /usr                            \
               -libdir /usr/lib/$MODULE                \
               -docdir /usr/share/$MODULE              \
               -plugindir /usr/lib/$MODULE/plugins     \
               -headerdir /usr/include/$MODULE         \
               -datadir /usr/share/$MODULE             \
               -translationdir /usr/share/$MODULE      \
               -sysconfdir /etc/$MODULE                \
               -examplesdir /usr/share/doc/$MODULE     \
               -demosdir /usr/share/doc/$MODULE        \
               -importdir /usr/share/doc/$MODULE       \
               $OPTS                                  &&

  default_make || exit 1

# It wants to point moc_location and uic_location to ${prefix}/src/qt-everywhere-opensource-src-4.7.0-beta2/bin
# and after much fiddling cannot get it to point them to /usr/bin. So lets just sedit these rascals.
  for i in `ls /usr/lib/$MODULE/pkgconfig/Q*.pc` ; do sed -i "s:\${prefix}/src/qt-everywhere-opensource-src-$VERSION/:\${prefix}/:" $i ; done &&
  sed -i "s:\${prefix}/src/qt-everywhere-opensource-src-$VERSION/:\${prefix}/:"  /usr/lib/$MODULE/pkgconfig/phonon.pc || true &&
# Like for moc and uic, the same needs doing for the *.prl files.
  find /usr/lib/qt4 -type f -name '*.prl' \
      -exec sed -i -e '/^QMAKE_PRL_BUILD_DIR/d;s/\(QMAKE_PRL_LIBS =\).*/\1/' {} \; &&

  if [ "$MAKE_QDOC3" == "y" ]; then
     cd tools/qdoc3 &&
     qmake -o Makefile qdoc3.pro &&
     make &&
     install -m 755 ../../bin/qdoc3 $MODULE_PREFIX/bin/ &&
     cd $SOURCE_DIRECTORY
  fi &&

  echo export QTDIR=\"/usr\" > $SOURCE_DIRECTORY/qt4.rc &&
  echo export PATH=\"'${PATH}':'${QTDIR}'/bin\" >> $SOURCE_DIRECTORY/qt4.rc &&
  echo export XDG_DATA_DIRS=\"'${XDG_DATA_DIRS:-/usr/share}':/usr/share/qt4\" >> $SOURCE_DIRECTORY/qt4.rc &&
  echo export PKG_CONFIG_PATH=\"'${PKG_CONFIG_PATH}':/usr/lib/qt4/pkgconfig\" >> $SOURCE_DIRECTORY/qt4.rc &&

  install -m644 $SOURCE_DIRECTORY/qt4.rc /etc/profile.d/

) > $C_FIFO 2>&1
