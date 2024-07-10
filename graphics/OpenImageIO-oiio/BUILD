rm -f src/dicom.imageio &&

if module_installed ffmpeg; then
  OPTS+=" -DUSE_FFMPEG=ON"
fi &&

OPTS+=" -DSTOP_ON_WARNING=OFF \
        -DOIIO_BUILD_TESTS=OFF \
        -DBUILD_TESTING=OFF \
        -DCMAKE_BUILD_TYPE=Release \
        -DOIIO_BUILD_TOOLS=ON \
        -DUSE_EXTERNAL_PUGIXML=ON \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -DBUILD_MISSING_FMT=OFF \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DUSE_PYTHON=ON \
        -DVERBOSE=ON \
        -DUSE_DCMTK=OFF \
        -DBUILD_DOCS=OFF \
        -DBUILD_ROBINMAP_FORCE=ON \
        -DBUILD_FMT_FORCE=ON \
        -DUSE_OPENVDB=OFF \
        -DUSE_NUKE=OFF \
        -DINSTALL_FONTS=OFF \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_DISABLE_FIND_PACKAGE_Qt6=ON"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS -Wno-dev &&
cmake --build $MODULE-$VERSION &&

prepare_install &&
cmake --install $MODULE-$VERSION
