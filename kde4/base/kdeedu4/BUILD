(

  KDE4_BUILD_DIR="$SOURCE_DIRECTORY/kde4-build"

  BOOST_VER=`lvu version boost | sed "s:\.:_:g"`
  GCC_VER=`lvu version gcc | sed "s:\.::g" | cut -c 1-2`
  sedit "s:gcc-mt-1_33_1:gcc$GCC_VER-mt-$BOOST_VER:" cmake/modules/FindBoostPython.cmake

  source /etc/profile.d/qt4.rc &&
  source /etc/profile.d/kde4.rc &&

  mkdir $KDE4_BUILD_DIR &&
  cd $KDE4_BUILD_DIR &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE             &&

  default_make

) > $C_FIFO 2>&1
