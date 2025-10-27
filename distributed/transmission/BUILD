if in_depends qt6-tools; then
  source /etc/init.d/qt6.rc
fi &&

OPTS+=" -DWITH_CRYPTO=openssl \
        -DENABLE_TESTS=OFF \
        -DINSTALL_LIB=ON
        -DUSE_SYSTEM_EVENT2=ON"

default_cmake_build
