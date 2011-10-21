(

  export CFLAGS="$CFLAGS -fPIC" &&

# This is needed to compile with pulseaudio-1.x or greater.
  sed -i "24i #include <QtCore/qmath.h>" phonon/pulsestream.cpp &&

  source /etc/profile.d/qt4.rc   &&
  source /etc/profile.d/kde4.rc  &&

  default_cmake_build

) > $C_FIFO 2>&1
