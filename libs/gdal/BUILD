# Deal with poppler 24.12.0
sedit '21i #include <sstream>' frmts/pdf/pdfsdk_headers_poppler.h

export PYTHONDONTWRITEBYTECODE=1 &&

OPTS+=" -DBUILD_PYTHON_BINDINGS=ON \
        -DCMAKE_CXX_STANDARD=20 \
        -DGDAL_USE_PODOFO=OFF \
        -DGDAL_USE_MONGOCXX=OFF \
        -DENABLE_IPO=ON \
        -DUSE_CCACHE=ON \
        -DCMAKE_INSTALL_INCLUDEDIR=include/gdal \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -DGDAL_ENABLE_PLUGINS=ON"

default_cmake_build
