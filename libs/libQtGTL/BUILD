(

  BUILD_DIR="$SOURCE_DIRECTORY/build_dir"

  . /etc/profile.d/qt4.rc
  . /etc/profile.d/kde4.rc

  mkdir $BUILD_DIR &&
  cd $BUILD_DIR    &&

  default_cmake_build

) > $C_FIFO 2>&1
