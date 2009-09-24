(

  source /etc/profile.d/qt4.rc &&
  source /etc/profile.d/kde4.rc &&

  QT_CREATOR_BLD="$SOURCE_DIRECTORY/creator-build"

  mkdir $QT_CREATOR_BLD &&
  cd $QT_CREATOR_BLD    &&

  qmake $SOURCE_DIRECTORY/qtcreator.pro

  make            &&
  prepare_install &&

  make install INSTALL_ROOT=$MODULE_PREFIX/

) > $C_FIFO 2>&1
