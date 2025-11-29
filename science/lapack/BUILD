# Adding install includedir so this does not conflict with blas stuff provided by Atlas

OPTS+=" -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -DBUILD_TESTING=OFF \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_Fortran_COMPILER=gfortran \
        -DCMAKE_INSTALL_INCLUDEDIR=/usr/include/$MODULE \
        -DCBLAS=ON \
        -DLAPACKE=ON \
        -DBUILD_SHARED_LIBS=ON \
        -DLAPACKE_WITH_TMG=ON \
        -DCMAKE_SKIP_RPATH=ON \
        -DBUILD_DEPRECATED=OFF \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -DBUILD_INDEX64=OFF $OPTS &&
cmake --build $MODULE-$VERSION &&

cmake -B $MODULE-$VERSION-64 -S . -DBUILD_INDEX64=ON -DBUILD_INDEX64_EXT_API=ON $OPTS &&
cmake --build $MODULE-$VERSION-64 &&

prepare_install &&
cmake --install $MODULE-$VERSION &&
cmake --install $MODULE-$VERSION-64
