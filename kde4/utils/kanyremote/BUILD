(

  source /etc/profile.d/qt4.rc  &&
  source /etc/profile.d/kde4.rc &&

# To get around "checking whether build environment is sane... configure: error: newly created file is older than distributed files!"
  touch * &&

  sedit "s:Icon=kanyremote:Icon=$KDE4_INSTALL_DIR/share/pixmaps/kanyremote_logo.svg:" $MODULE.desktop &&

  default_build

) > $C_FIFO 2>&1
