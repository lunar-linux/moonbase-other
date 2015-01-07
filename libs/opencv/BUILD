if in_depends $MODULE qt4; then
  . /etc/profile.d/qt4.rc
fi &&

OPTS+=" -DBUILD_WITH_DEBUG_INFO=OFF -DBUILD_TESTS=OFF -DBUILD_PERF_TESTS=OFF -DBUILD_EXAMPLES=OFF" &&

default_cmake_build
