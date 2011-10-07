(

# Fixes a build issue with LibRaw-0.14.0.
  sed -i "97d" src/Fileformat/pfsinraw.cpp &&

  . /etc/profile.d/qt4.rc &&

  qmake PREFIX=${MODULE_PREFIX} project.pro &&

  default_make

) > $C_FIFO 2>&1
