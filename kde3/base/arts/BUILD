(

  # Needed for KDE apps to see QT
  . /etc/profile.d/qt3.rc
 
  OPTS="--with-qt-dir=${QTDIR} --enable-final --disable-debug $OPTS"  &&

  default_build  &&

  if ! grep -q "${MODULE_PREFIX}/lib" /etc/ld.so.conf; then
    echo "${MODULE_PREFIX}/lib" >> /etc/ld.so.conf  
  fi &&

  mkdir -p ${MODULE_PREFIX}/lib/pkgconfig  &&

  echo "export KDEDIR=\"${MODULE_PREFIX}\"" >> $SOURCE_DIRECTORY/kde3.rc  &&
  echo export PATH=\"'${KDEDIR}'/bin:'$PATH'\" >> $SOURCE_DIRECTORY/kde3.rc  &&
  echo export PKG_CONFIG_PATH=\"'${KDEDIR}'/lib/pkgconfig:'$PKG_CONFIG_PATH'\" >> $SOURCE_DIRECTORY/kde3.rc  &&

  install -m644 $SOURCE_DIRECTORY/kde3.rc /etc/profile.d/

) > $C_FIFO 2>&1
