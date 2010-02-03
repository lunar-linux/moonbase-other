(

  KDE4_BUILD_DIR="$SOURCE_DIRECTORY/kde4-build"  &&

  sedit "s:boost\_python-gcc-mt:boost\_python:g" cmake/modules/FindBoostPython.cmake  &&

  source /etc/profile.d/qt4.rc   &&
  source /etc/profile.d/kde4.rc  &&

  mkdir $KDE4_BUILD_DIR  &&
  cd $KDE4_BUILD_DIR     &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX   \
                           -DCMAKE_BUILD_TYPE=RELEASE              \
                           -DEXPERIMENTAL_PYTHON_BINDINGS=FALSE    \
                           $OPTS                                  &&

  default_make

) > $C_FIFO 2>&1
