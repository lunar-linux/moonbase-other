(

  KDE4_PREFIX=${KDE4_INSTALL_DIR:-/opt/lunar/kde/4}

  sedit "s:lib64/automoc4:lib64/automoc4 $KDE4_PREFIX/lib/automoc4/:" cmake/modules/FindAutomoc4.cmake

  BUILD_DIR="$SOURCE_DIRECTORY/build_dir"

  source /etc/profile.d/qt4.rc   &&
  source /etc/profile.d/kde4.rc  &&

  mkdir $BUILD_DIR  &&
  cd $BUILD_DIR     &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE            &&

  default_make

) > $C_FIFO 2>&1
