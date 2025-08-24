OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -DENABLE_SHARED=TRUE \
        -DENABLE_SVT_HEVC=TRUE \
        -DENABLE_HDR10_PLUS=TRUE \
        -DCMAKE_VERBOSE_MAKEFILE=ON \
        -DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
        -Wno-dev"

if [[ $(arch) == x86_64 ]]; then
  OPTS+=" -DHIGH_BIT_DEPTH=ON"
fi &&

cmake -B $MODULE-$VERSION -S source/ -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION
