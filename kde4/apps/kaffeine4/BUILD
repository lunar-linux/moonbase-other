(

  KDE4_BUILD_DIR="$SOURCE_DIRECTORY/kde4-build"

  source /etc/profile.d/qt4.rc &&
  source /etc/profile.d/kde4.rc &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DKDE4_ENABLE_FINAL=ON                 \
                           -DCMAKE_BUILD_TYPE=RELEASE .          &&

  default_make

) > $C_FIFO 2>&1
