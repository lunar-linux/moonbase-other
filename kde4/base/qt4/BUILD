(

  export QTDIR=$SOURCE_DIRECTORY
  export PATH=$QTDIR/bin:$PATH
  export LD_LIBRARY_PATH=$QTDIR/lib

  sedit "s:COMMERCIAL_USER=ask:COMMERCIAL_USER=no:" configure

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

  OPTS+=" -release -fast -no-separate-debug-info -shared -qt-gif -system-libpng -system-libjpeg   \
          -system-libmng -system-zlib -accessibility -pch -stl -webkit -fontconfig \
          -largefile -glib -qt3support"

  echo "yes" | ./configure               \
               -prefix ${MODULE_PREFIX}  \
               $OPTS                    &&

  default_make  &&

  echo "export QTDIR=\"${MODULE_PREFIX}\"" >> $SOURCE_DIRECTORY/qt4.rc  &&
  echo export PATH=\"'${QTDIR}'/bin:'${PATH}'\" >> $SOURCE_DIRECTORY/qt4.rc  &&
  echo export PKG_CONFIG_PATH=\"'${QTDIR}'/lib/pkgconfig:'${PKG_CONFIG_PATH}'\"  \
        >> $SOURCE_DIRECTORY/qt4.rc  &&

  install -m644 $SOURCE_DIRECTORY/qt4.rc /etc/profile.d/

) > $C_FIFO 2>&1
