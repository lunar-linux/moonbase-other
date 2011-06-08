(

  sedit "s:boost\_python-gcc-mt:boost\_python:g" cmake/modules/FindBoostPython.cmake  &&

  source /etc/profile.d/qt4.rc   &&
  source /etc/profile.d/kde4.rc  &&

  OPTS+=" -DEXPERIMENTAL_PYTHON_BINDINGS=TRUE" &&
  
  default_cmake_build

) > $C_FIFO 2>&1
