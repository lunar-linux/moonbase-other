(

  export QTDIR=$SOURCE_DIRECTORY
  export PATH=$QTDIR/bin:$PATH
  export LD_LIBRARY_PATH=$QTDIR/lib

  sedit "s:COMMERCIAL_USER=ask:COMMERCIAL_USER=no:" configure &&
  sedit "s/-O2/$CFLAGS/" mkspecs/common/g++.conf &&

  if module_installed phonon ; then
    OPTS+=" -phonon -phonon-backend"
   else
    OPTS+=" -no-phonon -phonon-backend"
  fi &&

  if [ "$MAKE_DOCS" == "y" ]; then
    OPTS+=" -make tools -make docs -make translations"
  fi &&

  if [ "$MAKE_EXAMPLE_DEMOS" == "y" ]; then
    OPTS+=" -make examples -make demos -make tools -make docs -make translations"
  fi &&

  OPTS+=" -release -fast -no-separate-debug-info -script -scripttools -accessibility -pch -glib" &&

  echo "yes" | ./configure               \
               -prefix ${MODULE_PREFIX}  \
               $OPTS                    &&

  default_make  &&

  if [ "$MAKE_QDOC3" == "y" ]; then
     cd tools/qdoc3 &&
     qmake -unix -o Makefile qdoc3.pro &&
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
