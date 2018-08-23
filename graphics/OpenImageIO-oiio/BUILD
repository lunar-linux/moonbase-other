if in_depends $MODULE python ; then
  PY3_VER=`lvu version python | cut -d. -f1-2` &&
  OPTS+=" -DPYLIB3_INSTALL_DIR=lib/python${PY3_VER}/site-packages"
fi &&

if in_depends $MODULE python2 ; then
  PY2_VER=`lvu version python2 | cut -d. -f1-2` &&
  OPTS+=" -DPYLIB_INSTALL_DIR=lib/python${PY2_VER}/site-packages" 
fi &&

if in_depends $MODULE qt5; then
  . /etc/profile.d/qt5.rc
fi &&

if module_installed ffmpeg; then
  OPTS+=" -DUSE_FFMPEG=ON"
fi &&

OPTS+=" -DSTOP_ON_WARNING=OFF -DOIIO_BUILD_TESTS=OFF -DUSE_fPIC=ON -DUSE_EXTERNAL_PUGIXML=ON -DVERBOSE=ON" &&

default_cmake_build
