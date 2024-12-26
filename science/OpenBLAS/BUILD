OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -DTARGET=$(arch) \
        -DBUILD_SHARED_LIBS=ON \
        -DBUILD_TESTING=OFF \
        -DNO_AFFINITY=ON \
        -DNO_WARMUP=1 \
        -DNUM_THREADS=64 \
        -DDYNAMIC_ARCH=OFF \
        -DUSE_OPENMP=1 \
        -DINTERFACE64=1 \
        -Wno-dev"

ASMFLAGS=$CFLAGS FFLAGS=${CFLAGS} FC=gfortran \
cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&

cmake --build $MODULE-$VERSION &&
prepare_install &&

cmake --install $MODULE-$VERSION
