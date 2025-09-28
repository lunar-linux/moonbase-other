if in_depends $MODULE qt6-base; then
  . /etc/profile.d/qt6.rc
  OPTS+=" -Dforce_qt=Qt6"
fi &&

if module_installed llvm; then
  OPTS+=" -Duse_libclang=ON"
fi &&

OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -Wno-dev \
        -Dbuild_doc=OFF"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION

default_cmake_build
