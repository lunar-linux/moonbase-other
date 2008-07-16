(

  KDE4_BUILD_DIR="$SOURCE_DIRECTORY/kde4-build"

#  sedit "s:add_subdirectory(tests):#add_subdirectory(tests):" marble/CMakeLists.txt &&

  source /etc/profile.d/qt4.rc &&
  source /etc/profile.d/kde4.rc &&

  mkdir $KDE4_BUILD_DIR &&
  cd $KDE4_BUILD_DIR &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE             &&

  default_make

) > $C_FIFO 2>&1
