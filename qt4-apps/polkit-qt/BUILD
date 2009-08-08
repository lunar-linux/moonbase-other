(

  sedit "s:lib64/automoc4:lib64/automoc4 opt/lunar/kde/4/lib/automoc4/:" cmake/modules/FindAutomoc4.cmake

  BUILD_DIR="$SOURCE_DIRECTORY/build_dir"

  source /etc/profile.d/qt4.rc &&
  source /etc/profile.d/kde4.rc &&

  mkdir $BUILD_DIR &&
  cd $BUILD_DIR &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE             &&

  default_make

) > $C_FIFO 2>&1
