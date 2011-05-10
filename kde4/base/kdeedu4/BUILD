(

  sedit "s:boost\_python-gcc-mt:boost\_python:g" cmake/modules/FindBoostPython.cmake  &&

  source /etc/profile.d/qt4.rc   &&
  source /etc/profile.d/kde4.rc  &&

  cmake -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX   \
        -DCMAKE_BUILD_TYPE=RELEASE              \
        -DEXPERIMENTAL_PYTHON_BINDINGS=TRUE     \
        $OPTS .                                &&

  default_make


) > $C_FIFO 2>&1
