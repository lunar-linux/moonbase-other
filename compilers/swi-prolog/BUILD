if in_depends $MODULE qt6-imageformats ; then
  . /etc/profile.d/qt6.rc
fi &&

OPTS+=" -DBUILD_SHARED_LIBS=ON  \
        -DHAVE_LIBATOMIC=ON  \
        -DCMAKE_BUILD_TYPE=Release \
        -DBUILD_TESTING=OFF \
        -DINSTALL_DOCUMENTATION=OFF \
        -DCMAKE_INSTALL_PREFIX=/usr"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS -Wno-dev &&
cmake --build $MODULE-$VERSION &&

prepare_install &&
cmake --install $MODULE-$VERSION
