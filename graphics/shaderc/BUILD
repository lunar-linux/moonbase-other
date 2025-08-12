sed '/build-version/d'   -i glslc/CMakeLists.txt            &&
sed '/third_party/d'     -i CMakeLists.txt                  &&
sed 's|SPIRV|glslang/&|' -i libshaderc_util/src/compiler.cc &&

echo '"2025.3"' > glslc/src/build-version.inc &&

OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -DSHADERC_SKIP_TESTS=ON \
        -DSHADERC_ENABLE_EXAMPLES=OFF \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION
