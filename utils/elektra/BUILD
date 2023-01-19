export PYTHONDONTWRITEBYTECODE=1 &&

OPTS+=" -DBUILD_DOCUMENTATION=OFF \
        -DBUILD_FULL=ON \
        -DBINDINGS=ALL \
        -DTOOLS=ALL \
        -DPLUGINS=ALL \
        -DCMAKE_C_FLAGS=-fcommon \
        -DCMAKE_CXX_FLAGS=-fcommon \
        -DBUILD_STATIC=ON \
        -DENABLE_KDB_TESTING=OFF \
        -DINSTALL_SYSTEM_FILES=ON"

default_cmake_build
