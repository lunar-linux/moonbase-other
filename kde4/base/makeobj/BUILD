(

  prepare_install &&

  install -m755 $SOURCE_CACHE/$MODULE /usr/bin/ &&

  echo export KDE4_INSTALL_DIR=\"${MODULE_PREFIX}\" >> kde4.rc  &&
  echo export PATH=\"'${PATH}':${MODULE_PREFIX}/bin\" >> kde4.rc  &&
  echo export PKG_CONFIG_PATH=\"'${PKG_CONFIG_PATH}':${MODULE_PREFIX}/lib/pkgconfig\" >> kde4.rc &&

  install -m644 kde4.rc /etc/profile.d/

) > $C_FIFO 2>&1
