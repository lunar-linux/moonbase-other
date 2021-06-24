sed -i "s/-Werror//g" src/core/CMakeLists.txt &&
sed -i "s/-Werror//g" src/pyglue/CMakeLists.txt &&
sed -i "s/push(hidden)/push(default)/g" src/core/OCIOYaml.cpp &&

-DCMAKE_INSTALL_PREFIX=/usr \
    -DOCIO_BUILD_STATIC=OFF \
    -DOCIO_BUILD_APPS=OFF \
    -DOCIO_BUILD_PYGLUE=OFF \
    -DUSE_EXTERNAL_YAML=ON \
    -DUSE_EXTERNAL_TINYXML=ON \
    -DUSE_EXTERNAL_LCMS=ON

OPTS+=" -DCMAKE_BUILD_TYPE=Release \
        -DOCIO_BUILD_STATIC=OFF    \
        -DOCIO_BUILD_APPS=OFF \
        -DOCIO_BUILD_PYGLUE=OFF \
        -DUSE_EXTERNAL_YAML=ON \
        -DUSE_EXTERNAL_TINYXML=ON \
        -DUSE_EXTERNAL_LCMS=ON
        -DPYTHON_INCLUDE_DIR=/usr/include/python$(module_version python | cut -c1-3)" &&

default_cmake_build
