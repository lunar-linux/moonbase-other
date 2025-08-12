# Fix numpy discovery
sed -i "s|core/include|_core/include|g" CMakeLists.txt &&

PYTHON_VER="$(installed_version python | cut -d. -f1-2)" &&

OPTS+=" -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DWITH_PYTHON=ON \
        -DWITH_INSTALL_PORTABLE=OFF \
        -DWITH_STATIC_LIBS=OFF \
        -DPYTHON_VERSION=$PYTHON_VER \
        -DPYTHON_LIBPATH=/usr/lib \
        -DPYTHON_LIBRARY=python$PYTHON_VER \
        -DCMAKE_CXX_FLAGS=-I/usr/include/python$PYTHON_VER \
        -DWITH_SYSTEM_EIGEN3=ON \
        -DWITH_SYSTEM_LZO=ON \
        -DWITH_SYSTEM_FREETYPE=ON \
        -DWITH_LINKER_MOLD=ON \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION
