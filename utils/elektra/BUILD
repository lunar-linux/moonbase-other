export PYTHONDONTWRITEBYTECODE=1 &&

OPTS+=" -DBUILD_DOCUMENTATION=OFF \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -DBINDINGS=ALL \
        -DTOOLS=ALL \
        -DPLUGINS=ALL \
        -DCMAKE_C_FLAGS=-fcommon \
        -DCMAKE_CXX_FLAGS=-fcommon \
        -DBUILD_TESTING=OFF \
        -Wno-dev \
        -DINSTALL_SYSTEM_FILES=ON"

cmake -B $MODULE -G Ninja $OPTS &&
cmake --build $MODULE &&
prepare_install &&
cmake --install $MODULE

