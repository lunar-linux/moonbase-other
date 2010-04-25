(

  source /etc/profile.d/qt4.rc  &&
  source /etc/profile.d/kde4.rc &&

  sedit "s:Icon=kanyremote:Icon=$KDE4_INSTALL_DIR/share/pixmaps/kanyremote_logo.svg:" $MODULE.desktop &&

  default_build

) > $C_FIFO 2>&1
