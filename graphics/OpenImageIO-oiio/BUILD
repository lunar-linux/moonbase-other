if in_depends $MODULE qt5; then
  . /etc/profile.d/qt5.rc
fi &&

if module_installed ffmpeg; then
  OPTS+=" -DUSE_FFMPEG=ON"
fi &&

OPTS+=" -DSTOP_ON_WARNING=OFF -DOIIO_BUILD_TESTS=OFF -DUSE_fPIC=ON -DUSE_EXTERNAL_PUGIXML=ON -DVERBOSE=ON" &&

default_cmake_build
