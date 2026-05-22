sedit 's:from imp import reload:from importlib import reload:g' vigranumpy/lib/axistags.py &&

OPTS+=" -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DWITH_VIGRANUMPY=ON \
        -DPYTHON_SPHINX=OFF \
        -DDOCINSTALL=share/doc \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install &&
cmake --install $MODULE-$VERSION
