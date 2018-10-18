OPTS+=" -DUSE_EXTERNAL_LCMS=1    \
        -DUSE_EXTERNAL_YAML=0    \
        -DUSE_EXTERNAL_TINYXML=1 \
        -DOCIO_BUILD_STATIC=0    \
        -DOCIO_BUILD_PYGLUE=1    \
        -DPYTHON_INCLUDE_DIR=/usr/include/python$(module_version python | cut -c1-3)" &&

default_cmake_build
