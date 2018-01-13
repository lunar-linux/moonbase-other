if in_depends $MODULE qt5; then
  . /etc/profile.d/qt5.rc
fi &&

# bug: examples have to be built, if the (the sources) will be installed
if [[ "`get_module_config EXAMPLES`" = "y" ]]; then
  OPTS+=" -DBUILD_EXAMPLES=1"
else
  OPTS+=" -DBUILD_EXAMPLES=0"
fi &&

OPTS+=" -DBUILD_WITH_DEBUG_INFO=0 \
        -DBUILD_DOCS=0 \
        -DBUILD_TESTS=0 \
        -DBUILD_PERF_TESTS=0 \
        -DBUILD_SHARED_LIBS=1 \
        -DBUILD_WITH_DYNAMIC_IPP=1 \
        -DOPENCV_EXTRA_MODULES_PATH=../opencv_contrib-$VERSION/modules \
        -DOPENCV_ENABLE_NONFREE=1 \
        -DWITH_TBB=1 \
        -DWITH_GDAL=1 \
        -DENABLE_CXX11=1 \
        -DWITH_VTK=0 \
        -DWITH_LAPACK=1 \
        -DLAPACK_LIBRARIES=/usr/lib/liblapack.so;/usr/lib/libblas.so;/usr/lib/libcblas.so \
        -DCMAKE_SKIP_RPATH=1" &&

default_cmake_build
