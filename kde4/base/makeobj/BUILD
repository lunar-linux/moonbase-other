(

  prepare_install &&

  install -m755 $SOURCE_CACHE/$MODULE /usr/bin/ &&

  echo "export KDE4_INSTALL_DIR=\"${MODULE_PREFIX}\"" >> $SOURCE_DIRECTORY/kde4.rc  &&
  echo export PATH=\"'${PATH}':${MODULE_PREFIX}/bin\" >> $SOURCE_DIRECTORY/kde4.rc  &&
  echo export PKG_CONFIG_PATH=\"'${PKG_CONFIG_PATH}':${MODULE_PREFIX}/lib/pkgconfig\" >> $SOURCE_DIRECTORY/kde4.rc &&

  install -m644 $SOURCE_DIRECTORY/kde4.rc /etc/profile.d/

) > $C_FIFO 2>&1
