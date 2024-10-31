OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -DNATIVE_BUILD=TRUE \
        -DENABLE_SHARED=TRUE \
        -DENABLE_SVT_HEVC=TRUE \
        -DENABLE_HDR10_PLUS=TRUE \
        -Wno-dev"

if [[ $(arch) == x86_64 ]]; then
  OPTS+=" -DHIGH_BIT_DEPTH=ON"
fi

cmake -S x265_git/source -B build-12 -G Ninja \
    -DCMAKE_INSTALL_PREFIX=/usr \
    -DHIGH_BIT_DEPTH=TRUE \
    -DMAIN12=TRUE \
    -DEXPORT_C_API=FALSE \
    -DENABLE_CLI=FALSE \
    -DENABLE_SHARED=FALSE \
    -Wno-dev
  ninja -C build-12

  cmake -S x265_git/source -B build-10 -G Ninja \
    -DCMAKE_INSTALL_PREFIX=/usr \
    -DHIGH_BIT_DEPTH=TRUE \
    -DEXPORT_C_API=FALSE \
    -DENABLE_CLI=FALSE \
    -DENABLE_SHARED=FALSE \
    -Wno-dev
  ninja -C build-10

  cmake -S x265_git/source -B build -G Ninja \
    -DCMAKE_INSTALL_PREFIX=/usr \
    -DENABLE_SHARED=TRUE \
    -DENABLE_HDR10_PLUS=TRUE \
    -DEXTRA_LIB='x265_main10.a;x265_main12.a' \
    -DEXTRA_LINK_FLAGS='-L .' \
    -DLINKED_10BIT=TRUE \
    -DLINKED_12BIT=TRUE \
    -Wno-dev
  ln -s ../build-10/libx265.a build/libx265_main10.a
  ln -s ../build-12/libx265.a build/libx265_main12.a
  ninja -C build
}

package() {
  DESTDIR="${pkgdir}" ninja -C build install
