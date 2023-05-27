OPTS+=" -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr"


cmake -B ZArchive-$VERSION -S . -G Ninja $OPTS &&
cmake --build ZArchive-$VERSION &&

prepare_install &&

cmake --install ZArchive-$VERSION
