sedit 's:from imp import reload:from importlib import reload:g' vigranumpy/lib/axistags.py &&

OPTS+=" -DCMAKE_C_FLAGS=-DH5_USE_110_API \
        -DCMAKE_CXX_FLAGS=-DH5_USE_110_API \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DDOCINSTALL=share/doc \
        -Wno-dev"


cmake -B $MODULE-$VERSION -S . $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install &&
cmake --install $MODULE-$VERSION
