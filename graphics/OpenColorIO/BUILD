# A gcc issue.
sedit '17i #include <cstring>' src/OpenColorIO/FileRules.cpp &&

OPTS+=" -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_CONFIGURATION_TYPES=Release \
        -DOCIO_BUILD_TESTS=OFF
        -DOCIO_BUILD_STATIC=OFF"

default_cmake_build
