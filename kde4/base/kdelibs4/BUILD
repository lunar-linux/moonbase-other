(

# This export of LDFLAGS should be revisited on the next version bump.
  export LDFLAGS="-Wl,-rpath,/opt/lunar/kde/4/lib"

  KDE4_BUILD_DIR="$SOURCE_DIRECTORY/kde4-build"

  source /etc/profile.d/qt4.rc  &&
  source /etc/profile.d/kde4.rc &&
  mkdir $KDE4_BUILD_DIR &&
  cd $KDE4_BUILD_DIR &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE             &&

  default_make

  mkdir -p $MODULE_PREFIX/bin/ &&
  install -m0755 $SCRIPT_DIRECTORY/kde4 $MODULE_PREFIX/bin/

) > $C_FIFO 2>&1
