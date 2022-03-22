if in_depends $MODULE qt5; then
  . /etc/profile.d/qt5.rc
fi &&

if module_installed ffmpeg; then
  OPTS+=" -DUSE_FFMPEG=ON"
fi &&

OPTS+=" -DSTOP_ON_WARNING=OFF   \
        -DOIIO_BUILD_TESTS=OFF  \
        -DUSE_EXTERNAL_PUGIXML=ON \
        -DVERBOSE=ON              \
        -Dpybind11_DIR=/usr/lib/python3.9/site-packages/pybind11/share/cmake/pybind11/ \
        -DINSTALL_DOCS=OFF" &&

default_cmake_build
