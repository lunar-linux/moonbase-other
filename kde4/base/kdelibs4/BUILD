(

  KDE4_BUILD_DIR="$SOURCE_DIRECTORY/kde4-build"  &&

  source /etc/profile.d/qt4.rc   &&
  source /etc/profile.d/kde4.rc  &&

  mkdir $KDE4_BUILD_DIR  &&
  cd $KDE4_BUILD_DIR     &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE             \
                           -DKAUTH_BACKEND=PolkitQt-1             \
                           $OPTS                                 &&

  default_make  &&

  install -m0755 $SCRIPT_DIRECTORY/kde4 /usr/bin/

) > $C_FIFO 2>&1
