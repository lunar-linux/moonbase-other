if in_depends $MODULE openmpi; then
  OPTS+=" -DALLOW_UNSUPPORTED=ON \
          -DCMAKE_CXX_COMPILER=mpicxx \
          -DCMAKE_C_COMPILER=mpicc \
          -DCMAKE_Fortran_COMPILER=mpif90"
fi &&

OPTS+=" -DCMAKE_BUILD_TYPE=None \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DHDF5_USE_GNU_DIRS=ON \
        -DBUILD_STATIC_LIBS=OFF \
        -DHDF5_BUILD_CPP_LIB=ON \
        -DHDF5_BUILD_HL_LIB=ON \
        -DHDF5_BUILD_FORTRAN=ON \
        -DHDF5_ENABLE_Z_LIB_SUPPORT=ON \
        -DHDF5_ENABLE_SZIP_SUPPORT=ON \
        -DHDF5_ENABLE_SZIP_ENCODING=ON \
        -DHDF5_INSTALL_CMAKE_DIR=lib/cmake/hdf5 \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION
