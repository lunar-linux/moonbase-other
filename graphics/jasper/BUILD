export CFLAGS="$CFLAGS -fPIC"

OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -DJAS_ENABLE_DOC=NO  \
        -DCMAKE_SKIP_RPATH=ON \
        -DJAS_ENABLE_SHARED=ON \
        -DJAS_ENABLE_AUTOMATIC_DEPENDENCIES=OFF"

sed -i '/GLUT_glut_LIBRARY/s/^/#/' build/cmake/modules/JasOpenGL.cmake &&

default_cmake_build
