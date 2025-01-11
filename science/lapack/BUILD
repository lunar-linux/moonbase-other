# Adding install includedir so this does not conflict with blas stuff provided by Atlas

OPTS+=" -DCMAKE_BUILD_TYPE=Release \
        -DBUILD_SHARED_LIBS=ON \
        -DBUILD_TESTING=OFF \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_Fortran_COMPILER=gfortran \
        -DCMAKE_INSTALL_INCLUDEDIR=/usr/include/$MODULE \
        -DLAPACKE_WITH_TMG=ON \
        -DCBLAS=ON \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . $OPTS &&
cmake --build $MODULE-$VERSION &&

cmake -B $MODULE-$VERSION-64 -S . -DBUILD_INDEX64=ON $OPTS &&
cmake --build $MODULE-$VERSION-64 &&

prepare_install &&
cmake --install $MODULE-$VERSION &&
cmake --install $MODULE-$VERSION-64
