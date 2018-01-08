# Adding install includedir so this does not conblict with blas stuff provided by Atlas
OPTS+=" -DBUILD_SHARED_LIBS=ON  \
        -DCMAKE_Fortran_COMPILER=gfortran \
        -DLAPACKE_WITH_TMG=ON \
        -DCBLAS=ON \
        -DCMAKE_INSTALL_INCLUDEDIR=/usr/include/$MODULE \
        -DBUILD_DEPRECATED=ON" &&

default_cmake_build 
